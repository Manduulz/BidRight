import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/ui/auction/detail/components/paddle.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:bid_right_mobile/widgets/countdown_text.dart';
import 'package:bid_right_mobile/widgets/time_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'auction_cubit.dart';
import 'auction_state.dart';

class AuctionDetailBids extends StatelessWidget {
  const AuctionDetailBids({
    Key? key,
    required this.bidState,
    this.endTime,
  }) : super(key: key);

  final LoadingState<LotBidState> bidState;
  final DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.bodyLarge,
          child: bidState.map(
            uninitialized: (_) => const SizedBox.shrink(),
            loading: (_) => const SizedBox.shrink(),
            error: (_) => const Center(child: Text('Error loading bid data')),
            loaded: (loaded) {
              final bids = loaded.value.bids;
              final paddleNumber = loaded.value.bidder?.paddleNumber;

              return _BidDetail(
                bids: bids,
                paddleNumber: paddleNumber,
                endTime: endTime,
              );
            },
          ),
        ),
        if (bidState.isLoading)
          const Center(child: CircularProgressIndicator.adaptive()),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<LoadingState<LotBidState>>('bidState', bidState));
  }
}

class _BidDetail extends StatelessWidget {
  const _BidDetail({
    Key? key,
    required this.bids,
    required this.paddleNumber,
    this.endTime,
  }) : super(key: key);

  final List<Bid> bids;
  final String? paddleNumber;
  final DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Text('Current bids (${bids.length})')),
              const SizedBox(width: 8),
              Expanded(
                child: BlocSelector<AuctionCubit, AuctionState, num?>(
                  selector: (state) =>
                      state.lotDetail.valueOrNull?.minBidIncrements,
                  builder: (context, increment) {
                    if (increment == null) {
                      return const SizedBox();
                    }

                    final formattedIncrement =
                        NumberFormat.simpleCurrency(name: 'USD')
                            .format(increment);
                    return Text(
                      'Increment $formattedIncrement',
                      textAlign: TextAlign.end,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        if (endTime != null)
          Center(
            child: CountdownText(
              targetTime: endTime!,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: BRColors.btGreen),
            ),
          ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverStack(
                  children: [
                    const SliverPositioned.fill(child: BRCard()),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: bids.isEmpty
                          ? const SliverFillRemaining(
                              child: Center(
                                child: Text('No bids'),
                              ),
                            )
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (_, index) {
                                  final bid = bids[bids.length - index - 1];
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: _BidItem(
                                      key: ValueKey(bid.id),
                                      bid: bid,
                                      isOwnBid:
                                          bid.paddleNumber == paddleNumber,
                                      isWinningBid: index == 0,
                                    ),
                                  );
                                },
                                childCount: bids.length,
                              ),
                            ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _BidItem extends StatelessWidget {
  final Bid bid;
  final bool isOwnBid;
  final bool isWinningBid;

  const _BidItem({
    Key? key,
    required this.bid,
    this.isOwnBid = false,
    required this.isWinningBid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(fontSize: 18),
      child: Row(
        children: [
          Paddle(
            paddleNumber: bid.paddleNumber,
            color: displayColor,
          ),
          if (bid.createdDate != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeText(time: bid.createdDate!.toLocal()),
            ),
          const Spacer(),
          Text(NumberFormat.simpleCurrency(name: 'USD').format(bid.amount))
        ],
      ),
    );
  }

  Color get displayColor {
    if (isWinningBid) {
      return BRColors.winner;
    }

    if (isOwnBid) {
      return BRColors.bgDarkBlue;
    }

    return BRColors.trGray;
  }
}
