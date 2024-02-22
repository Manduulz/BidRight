import 'dart:math' as math;

import 'package:bid_right_mobile/assets.dart';
import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_state.dart';
import 'package:bid_right_mobile/ui/auction/join/join_auction_dialog.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/number_field.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'components/paddle.dart';

const _floatingButtonSize = 32.0;

class AuctionDetailFooter extends StatefulWidget {
  final AuctionState auctionState;

  const AuctionDetailFooter({
    Key? key,
    required this.auctionState,
  }) : super(key: key);

  @override
  State<AuctionDetailFooter> createState() => _AuctionDetailFooterState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AuctionState>('auctionState', auctionState));
  }
}

class _AuctionDetailFooterState extends State<AuctionDetailFooter> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final detail = widget.auctionState.lotDetail.valueOrNull;
    final isJoined = detail != null && detail.isJoined;

    return Theme(
      data: theme.copyWith(
        textTheme: theme.textTheme.apply(bodyColor: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Material(
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
          color: BRColors.bgDarkBlue,
          child: widget.auctionState.lotDetail.maybeMap(
            loaded: (loaded) {
              final lotDetail = loaded.value;
              if (!widget.auctionState.status.isActive ||
                  widget.auctionState.autoStopped) {
                return const SizedBox.shrink();
              }

              return SafeArea(
                top: false,
                child: AnimatedCrossFade(
                  crossFadeState: isJoined
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 100),
                  firstChild: _FooterOpen(lotDetail: lotDetail),
                  secondChild: _FooterClosed(lotDetail: lotDetail),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}

class _FooterClosed extends StatelessWidget {
  final AuctionDetailWithLot lotDetail;

  const _FooterClosed({
    Key? key,
    required this.lotDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bidAmount = lotDetail.bids.map((e) => e.amount).maxOrNull;

    final isWinner = lotDetail.isWinner;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, _floatingButtonSize / 2, 8, 8),
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    children: [
                      if (isWinner) const _WinnerIndicator(),
                      if (lotDetail.bidState.bidder != null)
                        Paddle(
                          paddleNumber: lotDetail.bidState.bidder!.paddleNumber,
                          color: BRColors.btGreen,
                        )
                    ],
                  ),
                ),
              ),
              bidAmount != null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          NumberFormat.simpleCurrency(name: 'USD')
                              .format(bidAmount),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Text('Current Bid'),
                      ],
                    )
                  : const Text('No Bids'),
              const SizedBox(width: 16),
              if (!lotDetail.isJoined)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: lotDetail.isWinner
                      ? null
                      : () => _showBidderSettings(context),
                  child:
                      Text(lotDetail.isJoined ? 'Place Bid' : 'Join Auction'),
                ),
              if (lotDetail.isJoined)
                IconButton(
                  onPressed: () => _showBidderSettings(context),
                  icon: const Icon(Icons.settings_outlined),
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _showBidderSettings(BuildContext context) async {
    final cubit = context.read<AuctionCubit>();
    final detail = cubit.state.lotDetail.valueOrNull;
    if (detail == null) {
      // This shouldn't happen.
      return;
    }

    await showJoinAuction(
      context: context,
      auctionId: cubit.state.auctionId!,
      lotId: cubit.state.selectedLotId,
      isJoined: lotDetail.isJoined,
      bidder: lotDetail.bidState.bidder,
      lockedFunds: lotDetail.bidState.lockedAmount,
    );

    // No way to reload this without reloading the entire auction.
    await cubit.loadAuction();
  }
}

class _WinnerIndicator extends StatelessWidget {
  const _WinnerIndicator();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 4,
      runSpacing: 4,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
        SvgPicture.asset(
          VectorAssets.winner,
          colorFilter: const ColorFilter.mode(
            BRColors.winner,
            BlendMode.srcIn,
          ),
          height: 16,
          width: 16,
        ),
        const Text('Highest Bidder', style: TextStyle(color: BRColors.winner)),
      ],
    );
  }
}

class _FooterOpen extends StatefulWidget {
  final AuctionDetailWithLot lotDetail;

  const _FooterOpen({
    Key? key,
    required this.lotDetail,
  }) : super(key: key);

  @override
  _FooterOpenState createState() => _FooterOpenState();
}

class _FooterOpenState extends State<_FooterOpen> {
  final _bidAmountController = TextEditingController();
  final _bidAmountFocus = FocusNode();

  num? _lastAmount;

  @override
  void initState() {
    super.initState();
    _bidAmountFocus.addListener(_onFocusChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final amount = context.watch<AuctionCubit>().state.bidAmount;
    if ((amount != _lastAmount) &&
        num.tryParse(_bidAmountController.text) != amount) {
      _lastAmount = amount;
      final newText = amount == 0 ? '' : amount.toString();
      _bidAmountController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _bidAmountController.dispose();
    _bidAmountFocus.dispose();
  }

  bool get isWinner => widget.lotDetail.isWinner;

  bool isValidBid(num? amount) {
    return (amount != null &&
        AuctionCubit.isValidBid(amount: amount, lotDetail: widget.lotDetail));
  }

  void _onFocusChanged() {
    if (mounted) {
      context
          .read<AuctionCubit>()
          .setEditingBidAmount(_bidAmountFocus.hasFocus);
    }
  }

  List<int> get increments {
    final minIncrement = widget.lotDetail.minBidIncrements;
    final baseIncrement = math.max(100, minIncrement.ceil());

    return [
      for (final offset in const [0, 400, 900]) baseIncrement + offset,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final minimumBid = widget.lotDetail.minimumBid.ceil();
    // maximum bid can be infinite
    final maximumBid = widget.lotDetail.maximumBid.floorToDouble();
    final hasSufficientFunds = minimumBid <= maximumBid;

    final bidAmount = int.tryParse(_bidAmountController.text);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, _floatingButtonSize / 2, 8, 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (widget.lotDetail.bidState.bidder != null) ...[
                const Text('Your Paddle #'),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8.0),
                  child: Paddle(
                    paddleNumber:
                        widget.lotDetail.bidState.bidder!.paddleNumber,
                    color: BRColors.btGreen,
                  ),
                ),
              ],
              const Spacer(),
              if (isWinner) const _WinnerIndicator(),
              IconButton(
                constraints: BoxConstraints.loose(Size.infinite),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
                onPressed: _showBidderSettings,
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
          const Divider(color: Colors.white),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Your Bid'),
              Flexible(
                  child: Text.rich(TextSpan(children: [
                const TextSpan(text: 'Max Biddable Amount '),
                TextSpan(
                  text:
                      NumberFormat.simpleCurrency(name: 'USD', decimalDigits: 0)
                          .format(maximumBid.floor()),
                  style: const TextStyle(color: BRColors.btGreen),
                )
              ])))
            ],
          ),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int increment in increments)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _InstantIncrementButton(
                        key: ValueKey(increment),
                        onPressed: _instantBidHandler(increment),
                        increment: increment,
                      ),
                    ),
                  )
              ],
            ),
          ),
          if (minimumBid <= maximumBid)
            Text.rich(TextSpan(text: 'Bid amount (', children: [
              TextSpan(
                text:
                    'Min. ${NumberFormat.simpleCurrency(name: 'USD', decimalDigits: 0).format(minimumBid)}',
                style: const TextStyle(color: BRColors.btRed),
              ),
              if (maximumBid < double.infinity) ...[
                const TextSpan(text: ' - '),
                TextSpan(
                  text:
                      'Max. ${NumberFormat.simpleCurrency(name: 'USD', decimalDigits: 0).format(maximumBid.floor())}',
                  style: const TextStyle(color: BRColors.btGreen),
                ),
              ],
              const TextSpan(text: ')')
            ]))
          else
            const Text(
              'Insufficient funds',
              style: TextStyle(color: BRColors.btRed),
            ),
          const SizedBox(height: 8),
          if (hasSufficientFunds)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: NumberField(
                      controller: _bidAmountController,
                      minimum: widget.lotDetail.minimumBid,
                      maximum: widget.lotDetail.maximumBid,
                      onChanged: (amount) {
                        context.read<AuctionCubit>().setBidAmount(amount);
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: _bidHandler(bidAmount),
                  child: const Text('Place Bid'),
                ),
              ],
            )
          else
            Row(
              children: [
                const Expanded(
                  child: Text('Lock more funds to continue bidding'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _showBidderSettings,
                  child: const Text('Locked funds'),
                ),
              ],
            )
        ],
      ),
    );
  }

  VoidCallback? _instantBidHandler(num increment) {
    final lastBid = widget.lotDetail.bids.map((e) => e.amount).maxOrNull ??
        widget.lotDetail.lot.startingBid ??
        0;

    var bidAmount = (lastBid + increment).ceil();

    return _bidHandler(bidAmount, confirm: true);
  }

  VoidCallback? _bidHandler(int? amount, {bool confirm = false}) {
    Future<void> placeBid() async {
      if (amount == null) {
        // just for type checking
        return;
      }

      context.read<AuctionCubit>().setBidAmount(amount);

      if (confirm) {
        final shouldBid = await _confirmBid(amount);
        if (!shouldBid || !mounted) {
          return;
        }
      }

      await _placeBidForAmount(amount);
    }

    return isValidBid(amount) &&
            !widget.lotDetail.isWinner &&
            !context.watch<AuctionCubit>().state.isBidInProgress
        ? placeBid
        : null;
  }

  Future<bool> _confirmBid(num amount) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Confirm bid',
              style: TextStyle(color: Colors.black),
            ),
            content: Text(
              'Confirm bid for ${NumberFormat.simpleCurrency(name: 'USD').format(amount)}',
              style: const TextStyle(color: Colors.black),
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Confirm')),
            ],
          ),
        ) ??
        false;
  }

  Future<void> _placeBidForAmount(num amount) async {
    final result = await context
        .read<AuctionCubit>()
        .placeBid(lotId: widget.lotDetail.lot.id, amount: amount);

    if (mounted && result is Failure) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          result.error.toString(),
          maxLines: result.error is String ? 5 : 1,
        ),
        backgroundColor: Colors.red,
      ));
    }
    // Otherwise do nothing
  }

  Future<void> _showBidderSettings() async {
    final cubit = context.read<AuctionCubit>();
    final detail = cubit.state.lotDetail.valueOrNull;
    if (detail == null) {
      // This shouldn't happen.
      return;
    }

    final lotDetail = widget.lotDetail;

    await showJoinAuction(
      context: context,
      auctionId: cubit.state.auctionId!,
      lotId: cubit.state.selectedLotId,
      isJoined: lotDetail.isJoined,
      bidder: lotDetail.bidState.bidder,
      lockedFunds: lotDetail.bidState.lockedAmount,
    );

    // No way to reload this without reloading the entire auction.
    await cubit.loadAuction();
  }
}

class _InstantIncrementButton extends StatelessWidget {
  const _InstantIncrementButton({
    super.key,
    required this.onPressed,
    required this.increment,
  });

  final VoidCallback? onPressed;
  final int increment;

  @override
  Widget build(BuildContext context) {
    var numberFormat =
        NumberFormat.simpleCurrency(name: 'USD', decimalDigits: 0);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        disabledForegroundColor: Colors.white38,
        padding: const EdgeInsets.all(4),
      ).copyWith(side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const BorderSide(color: Colors.white38);
        } else {
          return const BorderSide(color: Colors.white);
        }
      })),
      onPressed: onPressed,
      child: Text(
        '+ ${numberFormat.format(increment)}',
        textAlign: TextAlign.center,
      ),
    );
  }
}
