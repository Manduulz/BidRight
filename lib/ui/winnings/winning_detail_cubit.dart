import 'package:bid_right_mobile/models/deed_delivery.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/ui/winnings/winning_detail_state.dart';
import 'package:bloc/bloc.dart';

class WinningDetailCubit extends Cubit<WinningDetailState> {
  final AuctionRepository _repository;
  final int winningId;

  WinningDetailCubit({
    required AuctionRepository repository,
    required this.winningId,
  })  : _repository = repository,
        super(const WinningDetailState());

  Future<void> init() => loadDetail();

  Future<void> loadDetail() async {
    emit(state.copyWith(winning: state.winning.withLoading()));
    final result =
        await _repository.loadPastWinningDetail(winningId: winningId);
    emit(state.copyWith(winning: LoadingState.fromResult(result)));
  }

  void setDeedDeliveryType(DeedDeliveryType type) {
    if (state.deedDeliveryMethod?.type == type) {
      return;
    }

    emit(state.copyWith(deedDeliveryMethod: DeedDeliveryMethod.fromType(type)));
  }

  void setAddress(String address) {
    emit(state.copyWith(
        deedDeliveryMethod: state.deedDeliveryMethod?.map(
            pickup: (m) => m,
            ship: (_) => DeedDeliveryMethod.ship(address: address))));
  }

  Future<void> saveDeedDelivery() async {
    final deliveryMethod = state.deedDeliveryMethod;
    if (deliveryMethod == null || !deliveryMethod.isValid) {
      return;
    }

    emit(state.copyWith(isSaving: true));
    final result = await _repository.setDeedDeliveryMethod(
        lotId: winningId, method: deliveryMethod);
    emit(state.copyWith(isSaving: false));

    result.join(onSuccess: (_) => loadDetail(), onFailure: (error) {
      // TODO: handle error
    });
  }
}
