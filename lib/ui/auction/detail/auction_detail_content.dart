import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_detail_summary.dart';
import 'package:bid_right_mobile/ui/auction/detail/components/address_label.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/button.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'auction_state.dart';

class AuctionDetailContent extends StatelessWidget {
  const AuctionDetailContent({
    Key? key,
    required this.property,
  }) : super(key: key);

  final Property property;

  @override
  Widget build(BuildContext context) {
    final auction = context.select<AuctionCubit, LoadingState<AuctionDetail>>(
      (value) => value.state.auction,
    );

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              BlocBuilder<AuctionCubit, AuctionState>(
                  builder: (context, state) {
                if (state.status == LotStatus.stopped) {
                  return Text(
                    'This lot has ended',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
              const AuctionDetailSummary(),
              if (property.attributes.isNotEmpty)
                _Card(
                  key: const ValueKey('Property info'),
                  title: Text('Property Information'.toUpperCase()),
                  body: Column(
                    children: [
                      const SizedBox(height: 8),
                      LayoutBuilder(builder: (context, constraints) {
                        final maxWidth = constraints.maxWidth;
                        return Wrap(
                          runSpacing: 8,
                          children: [
                            for (final attribute in property.attributes)
                              if (_shouldShowAttribute(attribute))
                                SizedBox(
                                  width: maxWidth / 2,
                                  child: _LabeledAttributeInfo(
                                      attribute: attribute),
                                )
                          ],
                        );
                      })
                    ],
                  ),
                ),
              _Card(
                key: const ValueKey('Auction details'),
                title: Text('Auction Details'.toUpperCase()),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    auction.maybeWhen(
                      loaded: (auction, isLoading) => Stack(
                        children: [
                          _AuctionCardContent(auction: auction),
                          if (isLoading)
                            const Positioned.fill(
                              child: Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                            ),
                        ],
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
              BlocBuilder<AuctionCubit, AuctionState>(
                  builder: (context, state) {
                if (state.status == LotStatus.pending) {
                  return _RegisterButton(
                    isRegistered:
                        state.lotDetail.valueOrNull?.isJoined ?? false,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
            ]),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: BlocBuilder<AuctionCubit, AuctionState>(
            builder: (context, state) => state.lots.map(
              uninitialized: (_) {
                return const SliverToBoxAdapter(child: SizedBox());
              },
              loading: (_) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              },
              error: (_) {
                return SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Error loading lots'),
                      ElevatedButton(
                        onPressed: () =>
                            context.read<AuctionCubit>().loadLots(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
              loaded: (loaded) {
                final lots = loaded.value
                    .where((element) => element.id != state.selectedLotId)
                    .toList();
                return MultiSliver(
                  children: [
                    if (lots.isNotEmpty)
                    Text('Other lots (${lots.length})'),
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: lots.length, (context, index) {
                      final lot = lots[index];
                      return _LotCard(key: ValueKey(lot.id), lot: lot);
                    })),
                  ],
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverToBoxAdapter(
            child: BRForwardButton(
              onTap: () {
                Navigator.of(context).pushNamed(routes.helpCenter);
              },
              child: Row(
                children: [
                  SvgPicture.asset(VectorAssets.helpCenter),
                  const Text('  Help Center'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool _shouldShowAttribute(PropertyAttribute attribute) {
    // exclude valuation because it is shown above
    return attribute.type != PropertyAttributeType.valuation;
  }
}

class _AuctionCardContent extends StatelessWidget {
  final AuctionDetail auction;

  const _AuctionCardContent({
    Key? key,
    required this.auction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(vertical: 4);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: _LabeledInfo(
                label: const Text('Auction Host'),
                content: Text(
                  auction.hostName ?? '',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Spacer(),
            if (auction.hostLogoUrl != null)
              CachedNetworkImage(
                imageUrl: auction.hostLogoUrl!,
                height: 36,
                width: 36,
                fit: BoxFit.contain,
              ),
          ],
        ),
        const Divider(),
        Padding(
          padding: padding,
          child: _LabeledInfo(
              label: const Text('Auction Date'),
              content: Text(DateFormat.jm()
                  .add_yMMMMEEEEd()
                  .format(auction.startTime.toLocal()))),
        ),
        if (auction.location != null)
          Padding(
            padding: padding,
            child: _LabeledInfo(
                label: const Text('In-Person Bidding Location'),
                content: Text(auction.location!)),
          ),
        if (auction.type != AuctionType.other)
          Padding(
            padding: padding,
            child: _LabeledInfo(
              label: const Text('Auction Type'),
              content: Text(_nameForAuctionType(auction.type)),
            ),
          ),
        Padding(
          padding: padding,
          child: Row(
            children: [
              Expanded(
                child: _LabeledInfo(
                  label: const Text('Estimated Duration'),
                  content: Text(_formatDuration(
                      auction.stopTime.difference(auction.startTime))),
                ),
              ),
              Expanded(
                child: BlocSelector<AuctionCubit, AuctionState,
                    LoadingState<List<LotSummary>>>(
                  selector: (state) => state.lots,
                  builder: (context, lots) {
                    return lots.map(
                      uninitialized: (_) => const SizedBox(),
                      loading: (_) => const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      error: (_) => TextButton(
                        onPressed: () =>
                            context.read<AuctionCubit>().loadLots(),
                        child: const Text('Load lots'),
                      ),
                      loaded: (loaded) => _LabeledInfo(
                          label: const Text('Lots'),
                          content: Text(loaded.value.length.toString())),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  static String _formatDuration(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;

    final parts = [
      if (days != 0) '${days}d',
      if (hours != 0 || duration < const Duration(minutes: 1)) '${hours}h',
      if (minutes != 0) '${minutes}m',
    ];

    return parts.join(' ');
  }

  static String _nameForAuctionType(AuctionType type) {
    switch (type) {
      case AuctionType.online:
        return 'Online';
      case AuctionType.inPerson:
        return 'In-Person';
      case AuctionType.hybrid:
        return 'Hybrid (Online & In-Person)';
      case AuctionType.other:
        return '-';
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuctionDetail>('auction', auction));
  }
}

class _Card extends StatelessWidget {
  final Widget title;
  final Widget body;

  const _Card({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BRCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTextStyle.merge(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: BRColors.bgDarkBlue,
                fontSize: 16,
              ),
              child: title,
            ),
            body,
          ],
        ),
      ),
    );
  }
}

class _LabeledAttributeInfo extends StatelessWidget {
  const _LabeledAttributeInfo({
    Key? key,
    required this.attribute,
  }) : super(key: key);

  final PropertyAttribute attribute;

  @override
  Widget build(BuildContext context) {
    return _LabeledInfo(
      label: Text(attribute.name),
      content: Text(attribute.formattedValue),
    );
  }
}

class _LabeledInfo extends StatelessWidget {
  final Widget label;
  final Widget content;

  const _LabeledInfo({
    Key? key,
    required this.label,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle.merge(
          style: const TextStyle(fontSize: 12, color: BRColors.trGray),
          maxLines: 1,
          child: label,
        ),
        DefaultTextStyle.merge(
          style: const TextStyle(fontSize: 16, color: BRColors.fnligtBlack),
          maxLines: 1,
          child: content,
        )
      ],
    );
  }
}

class _RegisterButton extends StatefulWidget {
  final bool isRegistered;

  const _RegisterButton({Key? key, required this.isRegistered})
      : super(key: key);

  @override
  State<_RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<_RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return widget.isRegistered
        ? OutlinedButton(
            onPressed: unregister,
            child: const Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Registered',
                  style: TextStyle(color: BRColors.btGreen)),
              TextSpan(text: '/Unregister'),
            ])),
          )
        : OutlinedButton(
            onPressed: () => context.read<AuctionCubit>().preRegister(),
            child: const Text('Pre-register'),
          );
  }

  Future<void> unregister() async {
    final shouldUnregister = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Unregister'),
              content: const Text('Really unregister from this auction?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Unregister'),
                ),
              ],
            );
          },
        ) ??
        false;

    if (!shouldUnregister || !mounted) {
      return;
    }

    context.read<AuctionCubit>().unregister();
  }
}

class _LotCard extends StatelessWidget {
  const _LotCard({super.key, required this.lot});

  final LotSummary lot;

  @override
  Widget build(BuildContext context) {
    return BRCard(
      child: InkWell(
        onTap: () {
          DefaultTabController.of(context).index = 0;
          context.read<AuctionCubit>().selectLot(lot.id);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AuctionAddressLabel(address: lot.address),
        ),
      ),
    );
  }
}
