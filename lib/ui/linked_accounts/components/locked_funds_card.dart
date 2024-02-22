import 'package:bid_right_mobile/models/locked_funds.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/ui/shared/address_label.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class LockedFundsCard extends StatelessWidget {
  final LockedFundsSummary lockedFundsSummary;

  const LockedFundsCard({
    Key? key,
    required this.lockedFundsSummary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BRCard(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Active Auctions (${lockedFundsSummary.activeAuctions.length})',
              style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              thickness: 1.0,
            ),
            for (final auction in lockedFundsSummary.activeAuctions)
              _AuctionItem(auction: auction),
            Text(
              'Pending Winnings (${lockedFundsSummary.pendingWinnings.length})',
              style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              thickness: 1.0,
            ),
            for (final winning in lockedFundsSummary.pendingWinnings)
              _PastWinningItem(winning: winning),
          ],
        ),
      ),
    );
  }
}

class _AuctionItem extends StatelessWidget {
  const _AuctionItem({
    Key? key,
    required this.auction,
  }) : super(key: key);

  final ActiveAuctionLockedFund auction;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 48),
      child: InkWell(
        splashColor: BRColors.btGreen,
        onTap: () => _showAuction(context),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: AddressLabel(address: auction.lot.address),
              ),
              Expanded(
                child: Text(
                  NumberFormat.simpleCurrency(name: 'USD')
                      .format(auction.amount),
                  style: const TextStyle(
                      fontSize: 14.0, color: BRColors.fnligtBlack),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: BRColors.bgDarkBlue,
                size: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAuction(BuildContext context) async {
    context
        .read<NavigationCubit>()
        .moveToScreen(Screens.lotDetail(lotId: auction.lot.id));
  }
}

class _PastWinningItem extends StatelessWidget {
  const _PastWinningItem({
    Key? key,
    required this.winning,
  }) : super(key: key);

  final PendingWinningLockedFund winning;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 48),
      child: InkWell(
        splashColor: BRColors.btGreen,
        onTap: () => _showPastWinning(context),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: AddressLabel(
                    address: winning.lot.address,
                  )),
              Expanded(
                child: Text(
                  NumberFormat.simpleCurrency(name: 'USD')
                      .format(winning.downAmount),
                  style: const TextStyle(
                      fontSize: 14.0, color: BRColors.fnligtBlack),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: BRColors.bgDarkBlue,
                size: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPastWinning(BuildContext context) {
    context
        .read<NavigationCubit>()
        .moveToScreen(Screens.winning(lotId: winning.lot.id));
  }
}
