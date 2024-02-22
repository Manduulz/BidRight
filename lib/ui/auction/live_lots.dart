import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/ui/property/property_list.dart';
import 'package:bid_right_mobile/ui/shared/address_label.dart';
import 'package:bid_right_mobile/ui/winnings/components/labeled_info.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'dashboard_bloc.dart';

class LiveLotsSection extends StatelessWidget {
  final LoadingState<List<LiveLot>> lots;

  const LiveLotsSection({Key? key, required this.lots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return lots.map(
      uninitialized: (_) => const SizedBox.shrink(),
      loading: (_) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      error: (_) => Column(
        children: [
          const Text('Failed to load live lots'),
          ElevatedButton(
              onPressed: () => context.read<DashboardBloc>().loadLiveLots(),
              child: const Text('Retry')),
        ],
      ),
      loaded: (loaded) => _LiveLotList(lots: loaded.value),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<LoadingState<List<LiveLot>>>('lots', lots));
  }
}

class _LiveLotList extends StatefulWidget {
  final List<LiveLot> lots;

  const _LiveLotList({Key? key, required this.lots}) : super(key: key);

  @override
  State<_LiveLotList> createState() => _LiveLotListState();
}

class _LiveLotListState extends State<_LiveLotList> {
  final _pageController = PageController(viewportFraction: 0.85);

  bool _showBackArrow = false;
  late bool _showForwardArrow;

  @override
  void initState() {
    super.initState();
    _showForwardArrow = widget.lots.length > 1;
    _pageController.addListener(_updateArrowVisibility);
  }

  @override
  void didUpdateWidget(covariant _LiveLotList oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateArrowVisibility();
  }

  void _updateArrowVisibility() {
    if (!_pageController.hasClients) {
      return;
    }

    final page = _pageController.page;
    if (page == null) {
      return;
    }

    final shouldShowBackArrow = page >= 1;
    final shouldShowForwardArrow = page <= widget.lots.length - 2;

    if (_showForwardArrow != shouldShowForwardArrow ||
        _showBackArrow != shouldShowBackArrow) {
      setState(() {
        _showForwardArrow = shouldShowForwardArrow;
        _showBackArrow = shouldShowBackArrow;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Live Bids (${widget.lots.length})',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        widget.lots.isEmpty
            ? const Center(child: Text('No live lots.'))
            : ConstrainedBox(
                // This might make it clearer what is happening in issue 754
                constraints: const BoxConstraints(minHeight: 200),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ExpandablePageView.builder(
                      controller: _pageController,
                      itemCount: widget.lots.length,
                      itemBuilder: (context, index) => Container(
                        key: ValueKey(widget.lots[index].id),
                        padding: const EdgeInsets.all(8.0),
                        constraints: const BoxConstraints(minHeight: 184),
                        child: IntrinsicHeight(
                          child: _LiveLotItem(lot: widget.lots[index]),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      start: 0,
                      child: Offstage(
                        offstage: !_showBackArrow,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () =>
                              _moveToPage(_pageController.page!.ceil() - 1),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      end: 0,
                      child: Offstage(
                        offstage: !_showForwardArrow,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () =>
                              _moveToPage(_pageController.page!.floor() + 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }

  void _moveToPage(int page) {
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }
}

class _LiveLotItem extends StatelessWidget {
  final LiveLot lot;

  const _LiveLotItem({Key? key, required this.lot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        border: Border.fromBorderSide(
            BorderSide(color: Color(0xffc5c5c5), width: 1)),
      ),
      child: Material(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        color: Colors.white,
        child: InkWell(
          onTap: () => context.read<NavigationCubit>().moveToScreen(
              Screens.lotDetail(lotId: lot.id, auctionId: lot.auctionId)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).pushNamed(
                          routes.propertyList,
                          arguments: PropertyListArguments(
                            lotId: lot.id,
                            auctionId: lot.auctionId,
                          ),
                        ),
                        child: Text(lot.propertyCount == 1
                            ? '1 property'
                            : '${lot.propertyCount} properties'),
                      ),
                      AddressLabel(address: lot.property.address),
                      Text(_attributeString(lot.property)),
                      Row(
                        children: [
                          if (lot.auctionHostLogoUrl != null)
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 4),
                              child: CachedNetworkImage(
                                imageUrl: lot.auctionHostLogoUrl!,
                                fit: BoxFit.contain,
                                width: 32,
                                height: 32,
                              ),
                            ),
                          if (lot.auctionHostName != null)
                            Expanded(child: Text(lot.auctionHostName!)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.fromBorderSide(
                              BorderSide(color: BRColors.btRed))),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        child: Text(
                          'LIVE',
                          style: TextStyle(color: BRColors.btRed),
                        ),
                      ),
                    ),
                    LabeledInfo(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      label: lot.hasBids ? 'Current Bid' : 'Opening Price',
                      text: NumberFormat.simpleCurrency(name: 'USD')
                          .format(lot.currentBid),
                    ),
                    LabeledInfo(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      label: 'Ending Time',
                      text: lot.stopTime != null
                          ? DateFormat.MMMd()
                              .add_jm()
                              .format(lot.stopTime!.toLocal())
                          : 'TBD',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _attributeString(Property property) {
  final parts = <String>[
    '${property.beds ?? '-'} beds',
    '${property.baths ?? '-'} baths',
    '${property.area ?? '-'} sqft',
    if (property.valuation == '0' || property.valuation == null)
      'TBD'
    else
      '~${property.valuation}'
  ];

  return parts.join(', ');
}
