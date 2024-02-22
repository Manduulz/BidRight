import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/ui/property/property_list_state.dart';
import 'package:bloc/bloc.dart';

class PropertyListCubit extends Cubit<PropertyListState> {
  PropertyListCubit({
    required this.lotId,
    required this.auctionId,
    required AuctionRepository repository,
  })  : _repository = repository,
        super(const PropertyListState());

  final AuctionRepository _repository;

  final int lotId;

  final int auctionId;

  Future<void> init() => loadProperties();

  Future<void> loadProperties() async {
    emit(state.copyWith(properties: state.properties.withLoading()));
    final result = await _repository.loadPropertiesForLot(lotId);
    emit(state.copyWith(properties: LoadingState.fromResult(result)));
  }
}
