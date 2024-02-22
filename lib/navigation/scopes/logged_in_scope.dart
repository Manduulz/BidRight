import 'package:bid_right_mobile/navigation/app_state.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/navigation/scopes/nav_builder.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/connectivity.dart';
import 'package:bid_right_mobile/repository/filter_repository.dart';
import 'package:bid_right_mobile/repository/live_bid_repository.dart';
import 'package:bid_right_mobile/ui/auction/auction_list_bloc.dart';
import 'package:bid_right_mobile/ui/auction/dashboard_bloc.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_detail.dart';
import 'package:bid_right_mobile/ui/auction/search/search_cubit.dart';
import 'package:bid_right_mobile/ui/dashboard.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class LoggedInScope extends StatelessWidget {
  const LoggedInScope({
    super.key,
    required this.screen,
    required this.navBuilder,
  });

  final LoggedInScreen screen;
  final NavBuilder navBuilder;

  Page get dashboardPage => MaterialPage(
      name: routes.dashboard,
      key: const ValueKey('home'),
      child: MultiProvider(
        providers: [
          Provider<AuctionListBloc>(
            create: (context) =>
                AuctionListBloc(context.read<AuctionRepository>()),
            dispose: (_, bloc) => bloc.dispose(),
          ),
          Provider<DashboardBloc>(
            create: (context) => DashboardBloc(
              context.read<AuctionRepository>(),
              context.read<AccountRepository>(),
            ),
            dispose: (_, bloc) => bloc.dispose(),
          ),
          BlocProvider(
              create: (context) =>
                  SearchCubit(repository: context.read<AuctionRepository>(),
                    filterRepository: context.read<FilterRepository>(),
                  ))
        ],
        child: const DashboardScreen(),
      ));

  Page auctionPage(int lotId, int? auctionId, int? propertyId) => MaterialPage(
        name: routes.auctionDetail,
        key: ValueKey(_AuctionArgs(lotId)),
        child: BlocProvider<AuctionCubit>(
          create: (context) => AuctionCubit(
            auctionId: auctionId,
            lotId: lotId,
            propertyId: propertyId,
            repository: context.read<AuctionRepository>(),
            liveBiddingRepository: context.read<LiveBiddingRepository>(),
            connectivityNotifier: context.read<ConnectivityNotifier>(),
          ),
          child: const AuctionDetailScreen(),
        ),
      );

  Page winningPage(int lotId) => MaterialPage(
        name: '/winning/$lotId',
        key: ValueKey(_WinningArgs(lotId)),
        child: BlocProvider<WinningDetailCubit>(
            create: (context) => WinningDetailCubit(
                  repository: context.read<AuctionRepository>(),
                  winningId: lotId,
                )..init(),
            child: const WinningDetailScreen()),
      );

  @override
  Widget build(BuildContext context) {
    return screen.when(
      home: () => navBuilder([dashboardPage]),
      lot: (lotId, auctionId, propertyId) => navBuilder([
        dashboardPage,
        auctionPage(lotId, auctionId, propertyId),
      ]),
      winning: (lotId) => navBuilder([dashboardPage, winningPage(lotId)]),
    );
  }
}

class _WinningArgs extends Equatable {
  final int lotId;

  const _WinningArgs(this.lotId);

  @override
  List<Object?> get props => [lotId];
}

class _AuctionArgs extends Equatable {
  final int lotId;

  const _AuctionArgs(this.lotId);

  @override
  List<Object?> get props => [lotId];
}