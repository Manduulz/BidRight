import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/repository/connectivity.dart';
import 'package:bid_right_mobile/repository/live_bid_repository.dart';
import 'package:bid_right_mobile/repository/user_session.dart';
import 'package:bid_right_mobile/ui/account/notification/notification_cubit.dart';
import 'package:bid_right_mobile/ui/account/personal_info/personal_info_cubit.dart';
import 'package:bid_right_mobile/ui/account/two_factor/two_factor_setup.dart';
import 'package:bid_right_mobile/ui/account/two_factor/two_factor_setup_cubit.dart';
import 'package:bid_right_mobile/ui/auction/filter/filter_cubit.dart';
import 'package:bid_right_mobile/ui/auction/filter/filter_screen.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_auth.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_cubit.dart';
import 'package:bid_right_mobile/ui/property/property_list.dart';
import 'package:bid_right_mobile/ui/property/property_list_cubit.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/api/login_api.dart';
import 'package:bid_right_mobile/repository/api/resources_api.dart';
import 'package:bid_right_mobile/repository/app_preferences.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_cubit.dart';
import 'package:bid_right_mobile/ui/help_center/help_bloc.dart';
import 'package:bid_right_mobile/ui/linked_accounts/linked_accounts_bloc.dart';
import 'package:bid_right_mobile/ui/login/login_bloc.dart';
import 'package:bid_right_mobile/ui/account/personal_info/personal_info_screen.dart';
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profile_edit_bloc.dart';
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profiles_bloc.dart';
import 'package:bid_right_mobile/ui/register/registration_cubit.dart';
import 'package:bid_right_mobile/ui/onboarding.dart' show OnboardingScreen;
import 'package:bid_right_mobile/ui/login/login_screen.dart'
    show LoginScreen, LoginScreenParams;
import 'package:bid_right_mobile/ui/register/register.dart'
    show RegistrationScreen;

import 'package:bid_right_mobile/ui/account/personal_info/personal_info_screen.dart'
    show PersonalInfoScreen;
import 'package:bid_right_mobile/ui/account/notification/account_notification.dart'
    show AccountNotificationScreen;
import 'package:bid_right_mobile/ui/purchase_profile/purchase_profiles.dart'
    show PurchaseProfilesScreen;
import 'package:bid_right_mobile/ui/linked_accounts/verified_balance.dart'
    show VerifiedBalanceScreen;
import 'package:bid_right_mobile/ui/winnings/my_winnings.dart'
    show MyWinningScreen;
import 'package:bid_right_mobile/ui/help_center/help_center.dart'
    show HelpCenterScreen;
import 'package:bid_right_mobile/ui/help_center/contact_us.dart'
    show ContactUsScreen;
import 'package:bid_right_mobile/ui/purchase_profile/add_purchase_profiles.dart'
    show EditPurchaseProfileScreen, UpdatePurchaseProfileScreen;
import 'package:bid_right_mobile/ui/auction/detail/auction_detail.dart'
    show AuctionDetailArguments, AuctionDetailScreen;

import 'package:bid_right_mobile/ui/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

const splash = '/splash';
const firstpage = '/onboarding';
const loginpage = '/login';
const login_2fa = '/login/2fa';
const register = '/register';
const dashboard = '/dashboard';
const personalInfo = '/personalInfo';
const accountNotification = '/accountNotification';
const twoFactorSetup = '/account/2FA';
const purchaseProfiles = '/purchaseProfiles';
const verifiedBalance = '/verifiedBalance';
const myWinning = '/myWinning';
const winningDetail = '/myWinning/detail';
const helpCenter = '/helpCenter';
const contactUs = '/contactUs';
const addPurchaseProfile = '/purchaseProfiles/add';
const editPurchaseProfile = '/purchaseProfiles/edit';
const auctionFilter = '/auctionFilter';
const propertyList = '/properties';
const auctionDetail = '/auctionDetail';

Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
      splash: (_) => const SplashScreen(),
      firstpage: (_) => const OnboardingScreen(),
      loginpage: (context) => Provider<LoginBloc>(
            create: (context) => LoginBloc(
              userManager: context.read<UserManager>(),
              preferences: context.read<AppPreferences>(),
            ),
            dispose: (_, userManager) => userManager.dispose(),
            child: LoginScreen(
              shouldLogInImmediately: (ModalRoute.of(context)!
                          .settings
                          .arguments as LoginScreenParams?)
                      ?.shouldLogInImmediately ??
                  true,
            ),
          ),
      login_2fa: (context) {
        final arguments =
            ModalRoute.of(context)!.settings.arguments as TwoFactorArgs;
        final userManager = context.watch<UserManager>();
        final session = context.watch<UserSession>();
        return BlocProvider<TwoFactorCubit>(
            create: (context) => TwoFactorCubit(
                  userManager: userManager,
                  session: session,
                  refreshToken: arguments.refreshToken,
                  phone: arguments.phone,
                  hasAuthenticator: arguments.hasAuthenticator,
                  rememberMe: arguments.rememberMe,
                ),
            child: const TwoFactorScreen());
      },
      register: (_) => BlocProvider<RegistrationCubit>(
            create: (context) => RegistrationCubit(context.read<LoginApi>()),
            child: const RegistrationScreen(),
          ),
      personalInfo: (_) => BlocProvider(
          create: (context) => PersonalInfoCubit(
                repository: context.read<AccountRepository>(),
              ),
          child: const PersonalInfoScreen()),
      accountNotification: (_) => BlocProvider<NotificationCubit>(
          create: (context) =>
              NotificationCubit(context.read<AccountRepository>())..init(),
          child: const AccountNotificationScreen()),
      twoFactorSetup: (context) {
        return BlocProvider<TwoFactorSetupCubit>(
          create: (context) => TwoFactorSetupCubit(
              repository: context.read<AccountRepository>()),
          child: const TwoFactorSetup(),
        );
      },
      purchaseProfiles: (_) => Provider<PurchaseProfileListBloc>(
            create: (context) => PurchaseProfileListBloc(
                context.read<PurchaseProfileRepository>()),
            dispose: (_, bloc) => bloc.dispose(),
            child: const PurchaseProfilesScreen(),
          ),
      verifiedBalance: (_) => Provider<LinkedAccountsBloc>(
            create: (context) =>
                LinkedAccountsBloc(context.read<AccountRepository>()),
            dispose: (_, bloc) => bloc.dispose(),
            child: const VerifiedBalanceScreen(),
          ),
      myWinning: (_) => const MyWinningScreen(),
      winningDetail: (context) {
        final winningId = ModalRoute.of(context)!.settings.arguments as int;
        return BlocProvider<WinningDetailCubit>(
          create: (context) => WinningDetailCubit(
            repository: context.read<AuctionRepository>(),
            winningId: winningId,
          )..init(),
          child: const WinningDetailScreen(),
        );
      },
      helpCenter: (_) => Provider<HelpBloc>(
          create: (context) => HelpBloc(context.read<ResourcesApi>()),
          dispose: (_, bloc) => bloc.dispose(),
          child: const HelpCenterScreen()),
      contactUs: (_) => const ContactUsScreen(),
      addPurchaseProfile: (_) => Provider<EditPurchaseProfileBloc>(
          create: (context) => EditPurchaseProfileBloc(
              repository: context.read<PurchaseProfileRepository>()),
          dispose: (_, bloc) => bloc.dispose(),
          child: const EditPurchaseProfileScreen()),
      editPurchaseProfile: (context) {
        final profileId = ModalRoute.of(context)!.settings.arguments as int;
        return Provider<EditPurchaseProfileBloc>(
            create: (context) => EditPurchaseProfileBloc(
                  repository: context.read<PurchaseProfileRepository>(),
                  profileId: profileId,
                ),
            dispose: (_, bloc) => bloc.dispose(),
            child: const UpdatePurchaseProfileScreen());
      },
      auctionFilter: (_) => Builder(builder: (context) {
            final filter = ModalRoute.of(context)!.settings.arguments
                as List<AttributeFilter>;
            return BlocProvider<FilterCubit>(
                create: (context) =>
                    FilterCubit(context.read(), initialFilter: filter)
                      ..loadAttributes(),
                child: const FilterScreen());
          }),
      propertyList: (context) {
        final arguments =
            ModalRoute.of(context)!.settings.arguments as PropertyListArguments;
        return BlocProvider<PropertyListCubit>(
          create: (context) => PropertyListCubit(
            repository: context.read<AuctionRepository>(),
            lotId: arguments.lotId,
            auctionId: arguments.auctionId,
          )..init(),
          child: const PropertyListScreen(),
        );
      },
      auctionDetail: (context) {
        final arguments = ModalRoute.of(context)!.settings.arguments
            as AuctionDetailArguments;
        return BlocProvider<AuctionCubit>(
            create: (context) => AuctionCubit(
                  auctionId: arguments.auctionId,
                  lotId: arguments.lotId,
                  propertyId: arguments.propertyId,
                  repository: context.read<AuctionRepository>(),
                  liveBiddingRepository:
                      context.read<LiveBiddingRepository>(),
                  connectivityNotifier: context.read<ConnectivityNotifier>(),
                ),
            child: const AuctionDetailScreen());
      },
    };
