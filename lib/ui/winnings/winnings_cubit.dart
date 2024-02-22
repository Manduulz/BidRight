import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/ui/winnings/winnings_state.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';

class WinningsCubit extends Cubit<WinningsState> {
  final AuctionRepository _repository;

  WinningsCubit({required AuctionRepository repository})
      : _repository = repository,
        super(const WinningsState(winnings: Uninitialized())) {
    init();
  }

  Future<void> init() => loadWinnings();

  Future<void> loadWinnings() async {
    emit(state.copyWith(winnings: state.winnings.withLoading()));
    final result = await _repository.loadPastWinnings();
    emit(state.copyWith(
        winnings: LoadingState.fromResult(result).mapValue(_groupWinnings)));
  }

  static List<WinningsWithStatus> _groupWinnings(List<PastWinning> winnings) {
    return winnings.groupListsBy((element) => element.caseStatus)
        .entries
        .sortedBy<num>((element) => element.key.index)
        .map((e) => WinningsWithStatus(status: e.key, winnings: e.value))
        .toList();
  }
}
