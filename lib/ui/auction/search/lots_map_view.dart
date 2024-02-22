import 'dart:math';

import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/map_bounds.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/ui/auction/search/search_cubit.dart';
import 'package:bid_right_mobile/ui/auction/search/search_state.dart';
import 'package:bid_right_mobile/ui/auction/shared/auction_list_tile.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';

class LotSearchMapView extends StatelessWidget {
  final Widget? navButtons;

  const LotSearchMapView({Key? key, this.navButtons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        builder: (_, state) =>
            _LotSearchMapView(navButtons: navButtons, state: state));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Widget?>('navButtons', navButtons));
  }
}

class _LotSearchMapView extends StatefulWidget {
  final Widget? navButtons;
  final SearchState state;

  const _LotSearchMapView({
    Key? key,
    this.navButtons,
    required this.state,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LotSearchMapViewState();
}

class _LotSearchMapViewState extends State<_LotSearchMapView>
    with TickerProviderStateMixin {
  final _mapController = MapController();
  final _pageController = PageController(viewportFraction: 0.9);
  ImageConfiguration? _lastImageConfiguration;

  SearchState get state => widget.state;

  int? selectedMarkerId;

  AnimationController? _animationController;

  final _mapKey = GlobalKey();
  final _overlayKey = GlobalKey();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final imageConfiguration = createLocalImageConfiguration(context);
    if (imageConfiguration != _lastImageConfiguration) {
      _lastImageConfiguration = imageConfiguration;
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lots = state.lotState.valueOrNull ?? [];
    return BlocListener<SearchCubit, SearchState>(
      listenWhen: (previous, current) {
        if (current.lotState.isLoading) return false;
        return previous.lotState.map(
          uninitialized: (_) => true,
          loading: (_) => true,
          error: (_) => true,
          loaded: (loaded) =>
              !ListEquality<LotBidderState>(EqualityBy((lot) => lot.lot.id))
                  .equals(loaded.value, current.lotState.valueOrNull ?? []),
        );
      },
      listener: (_, __) => _pageController.jumpToPage(0),
      child: Stack(
        children: [
          FlutterMap(
            key: _mapKey,
            mapController: _mapController,
            options: MapOptions(
              initialCenter: lots.firstOrNull?.lot.property.location ??
                  const LatLng(41.88, -87.63),
              initialZoom: 9,
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.pinchZoom | InteractiveFlag.drag,
              ),
              onPositionChanged: (_, __) => _onNewPosition(),
              onPointerDown: (_, __) => _animationController?.stop(),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
              MarkerLayer(
                  markers: [
                for (final lot in lots)
                  _buildMarker(lot, lot.lot.id == selectedMarkerId)
              ].whereNotNull().toList()),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox.shrink(key: _overlayKey),
                  if (widget.navButtons != null) widget.navButtons!,
                  const SimpleAttributionWidget(
                      source: Text('OpenStreetMap contributors')),
                  if (lots.isNotEmpty)
                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: lots.length,
                        itemBuilder: (context, index) {
                          final lot = lots[index];
                          return Center(
                            key: ValueKey(lot.lot.id),
                            child: AuctionListTile(
                              lot: lot.lot,
                              isPinned: lot.isPinned,
                            ),
                          );
                        },
                        onPageChanged: _onPageChanged,
                      ),
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int pageNumber) {
    final lot = state.lotState.valueOrNull![pageNumber].lot;
    setState(() {
      selectedMarkerId = lot.id;
    });

    final point = lot.property.location;

    if (point != null) {
      _moveToLocation(point);
    }
  }

  void _moveToLocation(LatLng point) {
    _animationController?.dispose();
    final controller = _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..forward();

    final initialPoint = _computeCentralPoint();

    controller.addListener(() {
      final value = controller.value;
      final newPoint = LatLng(
        initialPoint.latitude * (1 - value) + point.latitude * value,
        initialPoint.longitude * (1 - value) + point.longitude * value,
      );
      _mapController.move(
        newPoint,
        _mapController.camera.zoom,
        offset: _computeCenterOffset(),
      );
    });

    _mapController.move(
      point,
      _mapController.camera.zoom.clamp(9, 19),
    );
  }

  Offset _computeCenterOffset() {
    final overlayTopObject =
        _overlayKey.currentContext!.findRenderObject() as RenderBox;
    final overlayTopY = overlayTopObject
        .localToGlobal(Offset.zero,
            ancestor: _mapKey.currentContext!.findRenderObject())
        .dy;

    var offset =
        Offset(0, (overlayTopY - _mapController.camera.nonRotatedSize.y) / 2);
    return offset;
  }

  LatLng _computeCentralPoint() {
    final overlayTopObject =
        _overlayKey.currentContext!.findRenderObject() as RenderBox;
    final overlayTopY = overlayTopObject
        .localToGlobal(Offset.zero,
            ancestor: _mapKey.currentContext!.findRenderObject())
        .dy;

    final camera = _mapController.camera;
    return camera
        .pointToLatLng(Point(camera.nonRotatedSize.x / 2, overlayTopY / 2));
  }

  void _onMarkerSelected(int id) {
    final index = state.lotState.valueOrNull?.indexWhere((lot) {
      return lot.lot.id == id;
    });

    if (index == null || index == -1) return;

    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  Marker? _buildMarker(
    LotBidderState lot,
    bool isSelected,
  ) {
    final point = lot.lot.property.location;
    if (point == null) {
      return null;
    }

    return Marker(
      point: point,
      child: GestureDetector(
        onTap: () => _onMarkerSelected(lot.lot.id),
        child: Image.asset(
          Assets.home,
          color: isSelected ? BRColors.btGreen : const Color(0xff1b255e),
        ),
      ),
    );
  }

  Future<void> _onNewPosition() async {
    final cubit = context.read<SearchCubit>();
    final bounds = _mapController.camera.visibleBounds;
    cubit.setBounds(MapBounds(
      north: bounds.north,
      south: bounds.south,
      east: bounds.east,
      west: bounds.west,
    ));
  }
}

extension PropertyLocation on Property {
  LatLng? get location {
    final lat = latitude;
    final long = longitude;
    if (lat == null || long == null) {
      return null;
    }

    return LatLng(lat.toDouble(), long.toDouble());
  }
}
