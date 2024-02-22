import 'package:bid_right_mobile/ui/auction/search/search_cubit.dart';
import 'package:bid_right_mobile/ui/auction/search/search_state.dart';
import 'package:bid_right_mobile/ui/auction/shared/auction_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LotSearchListView extends StatelessWidget {
  final Widget? navButtons;

  const LotSearchListView({
    Key? key,
    this.navButtons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.watch<SearchCubit>().performSearch,
      child: Stack(
        children: [
          BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
            return state.lotState.map(
                uninitialized: (_) => Container(),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator.adaptive()),
                error: (error) => const Center(child: Text('Error')), // TODO
                loaded: (loaded) {
                  final lots = loaded.value;
                  return ListView(
                    padding: const EdgeInsets.all(2.0),
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: lots
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: AuctionListTile(
                                lot: e.lot,
                                isPinned: e.isPinned,
                                onTapPin: () =>
                                    context.read<SearchCubit>().togglePin(
                                          lotId: e.lot.id,
                                          isPinned: !e.isPinned,
                                        ),
                              ),
                            ))
                        .toList(),
                  );
                });
          }),
          if (navButtons != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: navButtons!,
            ),
        ],
      ),
    );
  }
}
