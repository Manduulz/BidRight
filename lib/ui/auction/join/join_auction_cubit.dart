import 'dart:async';

import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:bid_right_mobile/ui/auction/join/join_auction_state.dart';
import 'package:bloc/bloc.dart';

class JoinAuctionCubit extends Cubit<JoinAuctionState> {
  final AccountRepository _accountRepository;
  final PurchaseProfileRepository _purchaseProfileRepository;
  final AuctionRepository _auctionRepository;
  final int auctionId;
  final int lotId;
  final bool isJoined;
  final num initialLockedFunds;
  final int? initialProfileId;

  late final StreamSubscription _purchaseProfileSubscription;

  late final StreamSubscription _bidderProfileSubscription;

  JoinAuctionCubit({
    required AccountRepository accountRepository,
    required PurchaseProfileRepository purchaseProfileRepository,
    required AuctionRepository auctionRepository,
    required this.auctionId,
    required this.lotId,
    required this.isJoined,
    AuctionBidder? bidder,
    num lockedFunds = 0,
  })  : _auctionRepository = auctionRepository,
        _purchaseProfileRepository = purchaseProfileRepository,
        _accountRepository = accountRepository,
        initialLockedFunds = lockedFunds,
        initialProfileId = bidder?.purchaseProfileId,
        super(JoinAuctionState(
            paddleNumber: bidder?.paddleNumber,
            lockedFunds: lockedFunds.ceil(),
            selectedProfileId: bidder?.purchaseProfileId,
            participationType: bidder?.type)) {
    init();
  }

  Future<void> init() {
    _purchaseProfileSubscription = _purchaseProfileRepository.purchaseProfiles
        .listen(_onPurchaseProfilesLoaded);
    _bidderProfileSubscription =
        _accountRepository.bidderDetail.listen(_onBidderProfileLoaded);
    return Future.wait([loadPurchaseProfiles(), loadAvailableBalance()]);
  }

  Future<void> loadPurchaseProfiles() async {
    await _purchaseProfileRepository.loadProfiles();
  }

  void _onPurchaseProfilesLoaded(List<PurchaseProfile> profiles) {
    emit(state.copyWith(
        profiles: Loaded(profiles),
        selectedProfileId:
            profiles.any((element) => element.id == state.selectedProfileId)
                ? state.selectedProfileId
                : null));
  }

  Future<void> loadAvailableBalance() async {
    await _accountRepository.refreshLinkedAccounts();
  }

  void _onBidderProfileLoaded(Bidder bidder) async {
    emit(state.copyWith(
        availableBalance:
            Loaded((bidder.availableBalance).floor())));
  }

  bool stateIsValid() {
    return state.selectedProfileId != null &&
        (isJoined || state.participationType != null) &&
        state.lockedFunds != null &&
        state.availableBalance.maybeMap<bool>(
            loaded: (loaded) => state.lockedFunds! <= loaded.value,
            orElse: () => false);
  }

  @override
  Future<void> close() async {
    await Future.wait([
      _purchaseProfileSubscription.cancel(),
      _bidderProfileSubscription.cancel(),
    ]);
    return super.close();
  }

  void setPurchaseProfile(int? id) {
    if (id == null ||
        (state.profiles.valueOrNull ?? const [])
            .any((element) => element.id == id)) {
      emit(state.copyWith(selectedProfileId: id));
    }
  }

  Future<Result<void>> joinAuction() async {
    final lockedFunds = state.lockedFunds;
    final profileId = state.selectedProfileId;

    if (lockedFunds == null || profileId == null) {
      return const Failure('');
    }

    emit(state.copyWith(isSubmitting: true));

    final Result<void> result = await _joinAuctionInternal(
      lockedFunds + initialLockedFunds,
      profileId,
    );

    if (!isClosed) {
      emit(state.copyWith(isSubmitting: false));
    }

    return result;
  }

  Future<Result<void>> _joinAuctionInternal(
    num lockedFunds,
    int profileId,
  ) async {
    if (isJoined) {
      return _auctionRepository.updateAuctionRegistration(
        auctionId: auctionId,
        lotId: lotId,
        amount: lockedFunds == initialLockedFunds ? null : lockedFunds,
        purchaseProfileId: profileId == initialProfileId ? null : profileId,
      );
    } else {
      final participationType = state.participationType;
      if (participationType == null) {
        return const Failure('');
      } else {
        return _auctionRepository.registerToAuction(
          auctionId: auctionId,
          lotId: lotId,
          purchaseProfileId: profileId,
          amount: lockedFunds,
          participationType: participationType,
        );
      }
    }
  }

  void setLockedFunds(int? value) {
    emit(state.copyWith(lockedFunds: value));
  }

  void setParticipationType(ParticipationType? value) {
    emit(state.copyWith(participationType: value));
  }
}
