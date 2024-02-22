import 'package:bid_right_mobile/ui/auction/auction_winner_screen.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_detail_footer.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_stopping_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auction_cubit.dart';
import 'auction_detail_body.dart';
import 'auction_detail_header.dart';
import 'auction_state.dart';

class AuctionDetailScreen extends StatefulWidget {
  const AuctionDetailScreen({Key? key}) : super(key: key);

  @override
  State<AuctionDetailScreen> createState() => _AuctionDetailScreenState();
}

class _AuctionDetailScreenState extends State<AuctionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuctionCubit, AuctionState>(
        listenWhen: (previous, current) =>
            previous.isConnectionReset != current.isConnectionReset,
        listener: (context, state) {
          if (state.isConnectionReset) {
            _showDuplicateSubscriptionError();
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: state.showWinningScreen
                ? AuctionWinnerScreen(
                    onClose: () =>
                        context.read<AuctionCubit>().closeWinningScreen(),
                  )
                : Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: state.lotDetail.maybeWhen(
                              loaded: (detail, isReloading) => Column(
                                children: [
                                  const AuctionDetailHeader(),
                                  Expanded(
                                      child:
                                          AuctionDetailBody(lot: detail.lot)),
                                ],
                              ),
                              orElse: () => const Center(
                                  child: CircularProgressIndicator.adaptive()),
                            ),
                          ),
                          AuctionDetailFooter(auctionState: state),
                        ],
                      ),
                      const _StartStopOverlay(),
                      if (state.stoppingTime != null &&
                          state.status != LotStatus.stopped)
                        Positioned.fill(
                          child: AuctionStoppingOverlay(
                              targetTime: state.stoppingTime!),
                        ),
                    ],
                  ),
          );
        });
  }

  Future<void> _showDuplicateSubscriptionError() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Duplicate subscription'),
              content: const Text(
                  'You have subscribed to an auction on another device. '
                  'This session has been disconnected.'),
              actions: [
                TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('OK'),
                )
              ],
            ));

    if (mounted) {
      Navigator.of(context).pop();
    }
  }
}

class _StartStopOverlay extends StatelessWidget {
  const _StartStopOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuctionCubit>().state;

    if (!(state.lotDetail.valueOrNull?.isJoined ?? false)) {
      return const SizedBox();
    }

    if (state.autoStarted && state.status == LotStatus.pending) {
      return const _StartStopOverlayContent(message: 'Auction starting...');
    }

    if (state.autoStopped && state.status != LotStatus.stopped) {
      return const _StartStopOverlayContent(message: 'Waiting for winner...');
    }

    return const SizedBox();
  }
}

class _StartStopOverlayContent extends StatelessWidget {
  const _StartStopOverlayContent({Key? key, required this.message})
      : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      left: false,
      right: false,
      child: Padding(
        padding: const EdgeInsets.only(top: kToolbarHeight),
        child: AbsorbPointer(
          child: ColoredBox(
            color: Colors.black38,
            child: Center(
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: DefaultTextStyle.merge(
                    style: Theme.of(context).textTheme.titleLarge,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(message),
                        const SizedBox(height: 8),
                        const CircularProgressIndicator.adaptive(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AuctionDetailArguments {
  final int? auctionId;
  final int lotId;
  final int? propertyId;

  const AuctionDetailArguments({
    this.auctionId,
    required this.lotId,
    this.propertyId,
  });
}
