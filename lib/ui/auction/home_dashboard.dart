import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/ui/auction/dashboard_bloc.dart';
import 'package:bid_right_mobile/ui/auction/shared/auction_list_tile.dart';
import 'package:bid_right_mobile/ui/shared/balance_card.dart';
import 'package:bid_right_mobile/ui/shared/verified_funds_text.dart';
import 'package:bid_right_mobile/ui/winnings/past_winnings_list.dart';
import 'package:bid_right_mobile/ui/winnings/winnings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:bid_right_mobile/navigation/routes.dart' as routes;

import 'live_lots.dart';

class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({Key? key}) : super(key: key);

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().refreshBidderDetails();
    context.read<DashboardBloc>().loadLiveLots();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<DashboardBloc>();

    return RefreshIndicator(
      onRefresh: () => Future.wait([
        bloc.refresh(),
        context.read<WinningsCubit>().loadWinnings(),
      ]),
      notificationPredicate: (notification) {
        return notification.depth == 2;
      },
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          if (notification.depth == 2) {
            notification.disallowIndicator();
          }
          return false;
        },
        child: NestedScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (context, __) => [
            StreamBuilder<Bidder>(
                stream: bloc.bidderDetail,
                initialData: bloc.bidderDetail.valueOrNull,
                builder: (context, snapshot) {
                  final bidder = snapshot.data;
                  if (bidder == null) {
                    return const SliverToBoxAdapter(
                        child: SizedBox(height: 160));
                  }

                  return SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        if (bidder.balance <= 0 && !bidder.isVerified)
                          _WarningBanner(
                            key: const ValueKey('No balance'),
                            onTap: () => Navigator.of(context)
                                .pushNamed(routes.verifiedBalance),
                            label: 'Welcome to BidRight',
                            content: 'Please link your bank account '
                                'to get started',
                          )
                        else if (!bidder.isVerified)
                          _WarningBanner(
                            key: const ValueKey('Unverified'),
                            onTap: () => Navigator.of(context)
                                .pushNamed(routes.personalInfo),
                            label: 'Identity Verification',
                            content: 'Please verify your profile to '
                                'start bidding',
                          )
                        else if (!bidder.hasAddress)
                          _WarningBanner(
                            key: const ValueKey('No address'),
                            onTap: () => Navigator.of(context)
                                .pushNamed(routes.personalInfo),
                            label: 'Mailing Address',
                            content: 'Please enter your mailing address '
                                'on the personal information screen',
                          ),
                        Padding(
                          key: const ValueKey('Greeting'),
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Text(
                            'Hi ${bidder.firstName}!',
                            style: const TextStyle(
                                fontSize: 36.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          key: ValueKey('Verified funds label'),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: VerifiedFundsText(),
                          ),
                        ),
                        Padding(
                          key: const ValueKey('Verified funds'),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      padding: const EdgeInsets.all(4),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        FaIcon(FontAwesomeIcons.wallet),
                                        Text(
                                          'Manage',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: BRColors.bgDarkBlue),
                                        ),
                                      ],
                                    ),
                                    onPressed: () => Navigator.of(context)
                                        .pushNamed(routes.verifiedBalance)),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: BalanceCard(
                                    availableBalance: bidder.availableBalance,
                                    lockedBalance: bidder.lockedBalance,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),

            //------------------------------------------------------

            SliverToBoxAdapter(
              child: StreamBuilder<LoadingState<List<LiveLot>>>(
                  stream: bloc.liveLots,
                  initialData: bloc.liveLots.value,
                  builder: (context, snapshot) {
                    return LiveLotsSection(lots: snapshot.data!);
                  }),
            ),
          ],
          //---------------------------------------------------------
          body: DefaultTabController(
            length: 5,
            child: StreamBuilder<List<LotBidderState>>(
                stream: bloc.pinnedLots,
                initialData: bloc.pinnedLots.valueOrNull,
                builder: (context, snapshot) {
                  final pinnedLots = snapshot.data;
                  return Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        tabs: [
                          const Tab(child: Text('Upcoming')),
                          const Tab(child: Text('My Auctions')),
                          Tab(
                            child: Text(
                              pinnedLots == null
                                  ? 'Pinned'
                                  : 'Pinned (${pinnedLots.length})',
                            ),
                          ),
                          const Tab(child: Text('Past Winnings')),
                          const Tab(child: Text('Cancelled Sales')),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            StreamBuilder<List<LotBidderState>>(
                                stream: bloc.upcomingLots,
                                initialData: bloc.upcomingLots.valueOrNull,
                                builder: (context, snapshot) {
                                  return _LotList(
                                    lots: snapshot.data,
                                    onRefresh: bloc.refreshUpcomingLots,
                                    onPin: bloc.pinLot,
                                    onUnpin: bloc.unpinLot,
                                    loadMore: bloc.loadMore,
                                  );
                                }),
                            StreamBuilder<List<LotBidderState>>(
                                stream: bloc.registeredLots,
                                initialData: bloc.registeredLots.valueOrNull,
                                builder: (context, snapshot) {
                                  return _LotList(
                                    lots: snapshot.data,
                                    onRefresh: bloc.refreshRegisteredLots,
                                    onPin: bloc.pinLot,
                                    onUnpin: bloc.unpinLot,
                                    loadMore: bloc.loadMore,
                                  );
                                }),
                            _LotList(
                              lots: pinnedLots,
                              onRefresh: bloc.refreshPinnedLots,
                              onPin: bloc.pinLot,
                              onUnpin: bloc.unpinLot,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: PastWinningsList(shouldRefresh: false),
                            ),
                            StreamBuilder<List<LotBidderState>>(
                                stream: bloc.cancelledSales,
                                initialData: bloc.cancelledSales.valueOrNull,
                                builder: (context, snapshot) {
                                  return _LotList(
                                    lots: snapshot.data,
                                    onRefresh: bloc.refreshRegisteredLots,
                                    onPin: bloc.pinLot,
                                    onUnpin: bloc.unpinLot,
                                    clickable: false,
                                  );
                                }),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

class _WarningBanner extends StatelessWidget {
  const _WarningBanner({
    super.key,
    this.onTap,
    required this.label,
    required this.content,
  });

  final VoidCallback? onTap;
  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '$label:',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const TextSpan(text: ' '),
            TextSpan(text: content),
          ],
        )),
      ),
    );
  }
}

class _LotList extends StatelessWidget {
  final List<LotBidderState>? lots;
  final AsyncCallback onRefresh;
  final Future<void> Function(int lotId) onPin;
  final Future<void> Function(int lotId) onUnpin;
  final bool clickable;
  final AsyncCallback? loadMore;

  const _LotList({
    Key? key,
    required this.lots,
    required this.onRefresh,
    required this.onPin,
    required this.onUnpin,
    this.clickable = true,
    this.loadMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lots = this.lots;
    if (lots == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (lots.isEmpty) {
      return const CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text('No lots')),
        )
      ]);
    }

    return NotificationListener<ScrollEndNotification>(
      onNotification: (scrollEnd) {
        final metrics = scrollEnd.metrics;
        if (metrics.pixels == metrics.maxScrollExtent) {
          loadMore?.call();
        }
        return false;
      },
      child: ListView.builder(
        itemCount: lots.length,
        itemBuilder: (context, index) {
          final state = lots[index];
          final lot = state.lot;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AuctionListTile(
              key: ValueKey(lot.id),
              lot: lot,
              isPinned: state.isPinned,
              onTapPin: () => state.isPinned ? onUnpin(lot.id) : onPin(lot.id),
              isClickable: clickable,
            ),
          );
        },
      ),
    );
  }
}
