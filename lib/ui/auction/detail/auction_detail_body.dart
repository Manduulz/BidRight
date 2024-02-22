import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_detail_bids.dart';
import 'package:bid_right_mobile/ui/shared/error.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auction_cubit.dart';
import 'auction_detail_content.dart';
import 'auction_state.dart';

class AuctionDetailBody extends StatelessWidget {
  final Lot lot;

  const AuctionDetailBody({
    Key? key,
    required this.lot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuctionCubit, AuctionState>(
      builder: (context, state) {
        final showBids = state.status.isActive;
        return DefaultTabController(
          length: 2,
          child: Column(
            children: [
              if ((state.lotDetail.valueOrNull?.isJoined ?? false) &&
                  state.connectionStatus == ConnectionStatus.disconnected)
                ColoredBox(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        const Flexible(child: Text('Disconnected from auction',
                          style: TextStyle(color: Colors.white),
                        )),
                        TextButton(
                          onPressed: () => context.read<AuctionCubit>().connect(),
                          child: const Text('Reconnect',
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (showBids)
                const SizedBox(
                  height: 32,
                  child: TabBar(
                    labelColor: Colors.black,
                    tabs: [
                      Text('Bid History'),
                      Text('Auction Details'),
                    ],
                  ),
                ),
              Expanded(
                child: showBids
                    ? TabBarView(
                        children: [
                          AuctionDetailBids(
                              bidState: state.bidState,
                              endTime: state.auction.valueOrNull?.startType ==
                                      AuctionStartType.auto
                                  ? state.lotDetail.valueOrNull?.realStopTime
                                  : null),
                          _buildContent(context, state.property),
                        ],
                      )
                    : _buildContent(context, state.property),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, LoadingState<Property> property) {
    return property.map(
        uninitialized: (_) => const SizedBox(),
        loading: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        error: (_) => ErrorIndicator(
            text: 'Error loading property',
            onRetry: () => context.read<AuctionCubit>().loadProperties()),
        loaded: (loaded) => AuctionDetailContent(property: loaded.value));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Lot>('lot', lot));
  }
}
