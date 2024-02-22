import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/navigation/routes.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:bid_right_mobile/ui/auction/join/join_auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/join/join_auction_state.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/number_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

Future<void> showJoinAuction({
  required BuildContext context,
  required int auctionId,
  required int lotId,
  AuctionBidder? bidder,
  required num lockedFunds,
  required bool isJoined,
}) {
  return showDialog(
    context: context,
    builder: (context) => BlocProvider<JoinAuctionCubit>(
      create: (context) => JoinAuctionCubit(
        accountRepository: context.read<AccountRepository>(),
        purchaseProfileRepository: context.read<PurchaseProfileRepository>(),
        auctionRepository: context.read<AuctionRepository>(),
        isJoined: isJoined,
        auctionId: auctionId,
        lotId: lotId,
        bidder: bidder,
        lockedFunds: lockedFunds,
      ),
      child: const _JoinAuctionDialog(),
    ),
  );
}

class _JoinAuctionDialog extends StatefulWidget {
  const _JoinAuctionDialog({Key? key}) : super(key: key);

  @override
  State<_JoinAuctionDialog> createState() => _JoinAuctionDialogState();
}

class _JoinAuctionDialogState extends State<_JoinAuctionDialog> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<JoinAuctionCubit>();
    final state = cubit.state;
    return AlertDialog(
      backgroundColor: BRColors.bgDarkBlue,
      content: DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.bodyMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Locked Funds'),
                      Text(NumberFormat.simpleCurrency(
                              name: 'USD', decimalDigits: 0)
                          .format(cubit.initialLockedFunds)),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: state.availableBalance.map(
                    uninitialized: (_) => const SizedBox(),
                    loading: (_) =>
                        const CircularProgressIndicator.adaptive(),
                    error: (_) => const _AvailableBalanceError(),
                    loaded: (loaded) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Available Balance',
                            textAlign: TextAlign.end,
                          ),
                          Text(NumberFormat.simpleCurrency(
                                  name: 'USD', decimalDigits: 0)
                              .format(loaded.value)),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
            state.availableBalance.maybeMap(
                loaded: (loaded) {
                  return loaded.value > 0
                      ? _ContentWithBalance(
                          availableBalance: loaded.value.toDouble(),
                          state: state,
                          cubit: cubit,
                          onJoinPressed: _joinButtonHandler(),
                        )
                      : const _NoBalanceContent();
                },
                orElse: () => const SizedBox.shrink())
          ],
        ),
      ),
    );
  }

  VoidCallback? _joinButtonHandler() {
    final cubit = context.read<JoinAuctionCubit>();
    if (!cubit.stateIsValid() || cubit.state.isSubmitting) {
      return null;
    }

    Future<void> joinAuction() async {
      final result = await cubit.joinAuction();
      if (result is Success && mounted) {
        Navigator.of(context).pop();
      }
    }

    return joinAuction;
  }
}

class _ContentWithBalance extends StatelessWidget {
  const _ContentWithBalance({
    Key? key,
    required this.availableBalance,
    required this.state,
    required this.cubit,
    required this.onJoinPressed,
  }) : super(key: key);

  final double availableBalance;
  final JoinAuctionState state;
  final JoinAuctionCubit cubit;
  final VoidCallback? onJoinPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text('Amount to Lock'),
              ),
              NumberField(
                minimum: 0,
                maximum: availableBalance,
                onChanged: cubit.setLockedFunds,
                decoration: const InputDecoration(
                  prefixText: r'$',
                ),
              ),
            ],
          ),
        ),
        state.profiles.map(
          uninitialized: (_) => const SizedBox.shrink(),
          loading: (_) =>
              const Center(child: CircularProgressIndicator.adaptive()),
          error: (_) => const _PurchaseProfileError(),
          loaded: (loaded) {
            return _DropdownBackground(
                child: DropdownButton<int>(
                    isExpanded: true,
                    isDense: true,
                    value: state.selectedProfileId,
                    items: loaded.value
                        .map((e) => DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(
                                e.name,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    hint: const Text('Purchase Profile'),
                    onChanged: (id) => cubit.setPurchaseProfile(id)));
          },
        ),
        if (!cubit.isJoined)
          _DropdownBackground(
            child: DropdownButton<ParticipationType>(
              value: state.participationType,
              isDense: true,
              isExpanded: true,
              hint: const Text('Location'),
              items: const [
                DropdownMenuItem(
                  value: ParticipationType.remote,
                  child: Text('Remote', style: TextStyle(color: Colors.black)),
                ),
                DropdownMenuItem(
                  value: ParticipationType.inPerson,
                  child:
                      Text('In Person', style: TextStyle(color: Colors.black)),
                ),
              ],
              onChanged: cubit.setParticipationType,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: !state.isSubmitting,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    disabledForegroundColor:
                        BRColors.bgLightGray.withOpacity(0.38),
                    disabledBackgroundColor:
                        BRColors.bgLightGray.withOpacity(0.12),
                  ),
                  onPressed: onJoinPressed,
                  child:
                      Text(cubit.isJoined ? 'Update' : 'Join Auction'),
                ),
              ),
              ProgressIndicatorTheme(
                data: const ProgressIndicatorThemeData(color: BRColors.btGreen),
                child: Positioned.fill(
                  child: Visibility(
                    visible: state.isSubmitting,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DropdownBackground extends StatelessWidget {
  const _DropdownBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Material(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: child,
        ),
      ),
    );
  }
}

class _NoBalanceContent extends StatelessWidget {
  const _NoBalanceContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Insufficient balance!",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.red),
          ),
          const SizedBox(height: 8),
          Text.rich(
            TextSpan(
                text: 'You can update your available balance on the ',
                children: [
                  TextSpan(
                    text: 'assets screen',
                    style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _showAssetsScreen(context),
                  )
                ]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                disabledForegroundColor: BRColors.bgLightGray.withOpacity(0.38),
                disabledBackgroundColor: BRColors.bgLightGray.withOpacity(0.12),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showAssetsScreen(BuildContext context) async {
    await Navigator.of(context).pushNamed(verifiedBalance);
    if (context.mounted) {
      context.read<JoinAuctionCubit>().loadAvailableBalance();
    }
  }
}

class _PurchaseProfileError extends StatelessWidget {
  const _PurchaseProfileError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () =>
            context.read<JoinAuctionCubit>().loadPurchaseProfiles(),
        child: const Text('Retry'),
      ),
    );
  }
}

class _AvailableBalanceError extends StatelessWidget {
  const _AvailableBalanceError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<JoinAuctionCubit>().loadAvailableBalance(),
      child: const Text('Retry'),
    );
  }
}
