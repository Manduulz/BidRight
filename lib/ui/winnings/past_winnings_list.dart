import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/navigation_cubit.dart';
import 'package:bid_right_mobile/ui/shared/address_label.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'winnings_cubit.dart';
import 'winnings_state.dart';

class PastWinningsList extends StatelessWidget {
  const PastWinningsList({
    Key? key,
    this.shouldRefresh = true,
  }) : super(key: key);

  final bool shouldRefresh;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WinningsCubit, WinningsState>(
      builder: (context, state) {
        return state.winnings.map(
          uninitialized: (_) => const SizedBox(),
          loading: (_) => const SizedBox(),
          error: (_) => const _ErrorScreen(),
          loaded: (loaded) {
            final Widget content = CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                for (final group in loaded.value) ...[
                  SliverToBoxAdapter(
                    child: Text(
                      '${group.status.displayName} (${group.winnings.length})',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(bottom: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                            _PastWinningsItem(winning: group.winnings[index]),
                        childCount: group.winnings.length,
                      ),
                    ),
                  ),
                ],
                if (loaded.value.isEmpty)
                  const SliverFillRemaining(
                    child: Center(
                      child: Text('No past winnings'),
                    ),
                  )
              ],
            );

            if (shouldRefresh) {
              return RefreshIndicator(
                onRefresh: () => context.read<WinningsCubit>().loadWinnings(),
                child: content,
              );
            } else {
              return content;
            }
          },
        );
      },
    );
  }
}

class _PastWinningsItem extends StatelessWidget {
  final PastWinning winning;

  const _PastWinningsItem({Key? key, required this.winning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLate = winning.isLate();

    return BRCard(
      child: InkWell(
        onTap: () => context
            .read<NavigationCubit>()
            .moveToScreen(Screens.winning(lotId: winning.lotId)),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              width: 2,
              color: isLate ? BRColors.btRed : Colors.transparent,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: AddressLabel(address: winning.address)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      NumberFormat.simpleCurrency(name: 'USD')
                          .format(winning.bidAmount),
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: BRColors.fnligtBlack,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(winning.createdDate.toLocal()),
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: BRColors.fnligtBlack,
                      ),
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

class _ErrorScreen extends StatelessWidget {
  const _ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Failed to load winnings.'),
          ElevatedButton(
            onPressed: () => context.read<WinningsCubit>().loadWinnings(),
            child: const Text('Retry'),
          ),
        ],
      ),
    ));
  }
}
