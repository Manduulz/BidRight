import 'package:bid_right_mobile/models/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@freezed
class LoadingState<T> with _$LoadingState<T> {
  const LoadingState._();

  const factory LoadingState.uninitialized() = Uninitialized;

  const factory LoadingState.loading() = Loading;

  const factory LoadingState.error(Object error) = ErrorState;

  const factory LoadingState.loaded(
    T value, {
    @Default(false) bool reloading,
  }) = Loaded;

  factory LoadingState.fromResult(Result<T> result) => result.join(
      onSuccess: (value) => Loaded(value),
      onFailure: (error) => ErrorState(error));

  bool get isLoading => maybeWhen(
        loading: () => true,
        loaded: (_, reloading) => reloading,
        orElse: () => false,
      );

  LoadingState<T> withLoading() => maybeWhen(
        loaded: (value, _) => LoadingState.loaded(value, reloading: true),
        orElse: () => const LoadingState.loading(),
      );

  T? get valueOrNull =>
      maybeMap(loaded: (loaded) => loaded.value, orElse: () => null);

  LoadingState<U> mapValue<U>(U Function(T value) mapper) => when(
        uninitialized: () => const Uninitialized(),
        loading: () => const Loading(),
        error: (error) => ErrorState(error),
        loaded: (value, reloading) =>
            Loaded(mapper(value), reloading: reloading),
      );

  LoadingState<U> flatMap<U>(LoadingState<U> Function(T value) mapper) => when(
        uninitialized: () => const Uninitialized(),
        loading: () => const Loading(),
        error: (error) => ErrorState(error),
        loaded: (value, reloading) => mapper(value),
      );
}
