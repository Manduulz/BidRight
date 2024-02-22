import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/ui/winnings/components/auction_info_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/bidder_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/case_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/deed_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/documents_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/past_due_banner.dart';
import 'package:bid_right_mobile/ui/winnings/components/payment_info_section.dart';
import 'package:bid_right_mobile/ui/winnings/components/progress_card.dart';
import 'package:bid_right_mobile/ui/winnings/components/property_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/wire_transfer_card.dart';
import 'winning_detail_cubit.dart';
import 'winning_detail_state.dart';

class WinningDetailScreen extends StatelessWidget {
  const WinningDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Winning detail'),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => context.read<WinningDetailCubit>().loadDetail(),
          child: BlocBuilder<WinningDetailCubit, WinningDetailState>(
            builder: (context, state) {
              return state.winning.map(
                  uninitialized: (_) => const SizedBox(),
                  loading: (_) => const Center(child: CircularProgressIndicator.adaptive()),
                  error: (error) => const _LoadingError(),
                  loaded: (loaded) =>
                      _WinningDetailContent(winning: loaded.value));
            },
          ),
        ),
      ),
    );
  }
}

class _LoadingError extends StatelessWidget {
  const _LoadingError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Failed to load winning detail'),
          ElevatedButton(
            onPressed: () => context.read<WinningDetailCubit>().loadDetail(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

class _WinningDetailContent extends StatelessWidget {
  final PastWinningDetail winning;

  const _WinningDetailContent({Key? key, required this.winning})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        if (winning.isLate())
          const PastDueBanner(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Actions', style: Theme.of(context).textTheme.bodyLarge),
        ),
        WireTransferCard(winning: winning),
        ProgressCard(
          progress: _courtProgress(winning.status),
          child: Text('Court approval', style: Theme.of(context).textTheme.titleSmall,),
        ),
        DeedSection(winning: winning),
        PaymentInfoSection(winning: winning),
        DocumentSection(documents: winning.documents),
        BidderSection(winnerUsername: winning.bidderUserName, winner: winning.winner),
        CaseSection(winning: winning),
        PropertyInfoSection(winning: winning),
        AuctionInfoSection(winning: winning),
      ],
    );
  }
}

Progress _courtProgress(CaseStatus status) {
  switch (status) {
    case CaseStatus.pendingTransaction:
    case CaseStatus.completeTransaction:
    case CaseStatus.waitingCourtHouse:
    case CaseStatus.approved:
    case CaseStatus.denied:
    case CaseStatus.paymentRefunded:
    case CaseStatus.unknown:
      return Progress.none;
    case CaseStatus.deedReady:
    case CaseStatus.deedIssued:
      return Progress.finished;
  }
}
