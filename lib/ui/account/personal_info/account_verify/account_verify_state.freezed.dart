// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_verify_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountVerifyState {
  LoadingState<List<AccountLink>> get accounts =>
      throw _privateConstructorUsedError;
  int? get selectedAccountId => throw _privateConstructorUsedError;
  LoadingState<List<String>> get numbers => throw _privateConstructorUsedError;
  dynamic get isVerified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountVerifyStateCopyWith<AccountVerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountVerifyStateCopyWith<$Res> {
  factory $AccountVerifyStateCopyWith(
          AccountVerifyState value, $Res Function(AccountVerifyState) then) =
      _$AccountVerifyStateCopyWithImpl<$Res, AccountVerifyState>;
  @useResult
  $Res call(
      {LoadingState<List<AccountLink>> accounts,
      int? selectedAccountId,
      LoadingState<List<String>> numbers,
      dynamic isVerified});

  $LoadingStateCopyWith<List<AccountLink>, $Res> get accounts;
  $LoadingStateCopyWith<List<String>, $Res> get numbers;
}

/// @nodoc
class _$AccountVerifyStateCopyWithImpl<$Res, $Val extends AccountVerifyState>
    implements $AccountVerifyStateCopyWith<$Res> {
  _$AccountVerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selectedAccountId = freezed,
    Object? numbers = null,
    Object? isVerified = freezed,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AccountLink>>,
      selectedAccountId: freezed == selectedAccountId
          ? _value.selectedAccountId
          : selectedAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<String>>,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<AccountLink>, $Res> get accounts {
    return $LoadingStateCopyWith<List<AccountLink>, $Res>(_value.accounts,
        (value) {
      return _then(_value.copyWith(accounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<String>, $Res> get numbers {
    return $LoadingStateCopyWith<List<String>, $Res>(_value.numbers, (value) {
      return _then(_value.copyWith(numbers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountVerifyStateImplCopyWith<$Res>
    implements $AccountVerifyStateCopyWith<$Res> {
  factory _$$AccountVerifyStateImplCopyWith(_$AccountVerifyStateImpl value,
          $Res Function(_$AccountVerifyStateImpl) then) =
      __$$AccountVerifyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<List<AccountLink>> accounts,
      int? selectedAccountId,
      LoadingState<List<String>> numbers,
      dynamic isVerified});

  @override
  $LoadingStateCopyWith<List<AccountLink>, $Res> get accounts;
  @override
  $LoadingStateCopyWith<List<String>, $Res> get numbers;
}

/// @nodoc
class __$$AccountVerifyStateImplCopyWithImpl<$Res>
    extends _$AccountVerifyStateCopyWithImpl<$Res, _$AccountVerifyStateImpl>
    implements _$$AccountVerifyStateImplCopyWith<$Res> {
  __$$AccountVerifyStateImplCopyWithImpl(_$AccountVerifyStateImpl _value,
      $Res Function(_$AccountVerifyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selectedAccountId = freezed,
    Object? numbers = null,
    Object? isVerified = freezed,
  }) {
    return _then(_$AccountVerifyStateImpl(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AccountLink>>,
      selectedAccountId: freezed == selectedAccountId
          ? _value.selectedAccountId
          : selectedAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<String>>,
      isVerified: freezed == isVerified ? _value.isVerified! : isVerified,
    ));
  }
}

/// @nodoc

class _$AccountVerifyStateImpl extends _AccountVerifyState {
  const _$AccountVerifyStateImpl(
      {this.accounts = const Uninitialized(),
      this.selectedAccountId,
      this.numbers = const Uninitialized(),
      this.isVerified = false})
      : super._();

  @override
  @JsonKey()
  final LoadingState<List<AccountLink>> accounts;
  @override
  final int? selectedAccountId;
  @override
  @JsonKey()
  final LoadingState<List<String>> numbers;
  @override
  @JsonKey()
  final dynamic isVerified;

  @override
  String toString() {
    return 'AccountVerifyState(accounts: $accounts, selectedAccountId: $selectedAccountId, numbers: $numbers, isVerified: $isVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountVerifyStateImpl &&
            (identical(other.accounts, accounts) ||
                other.accounts == accounts) &&
            (identical(other.selectedAccountId, selectedAccountId) ||
                other.selectedAccountId == selectedAccountId) &&
            (identical(other.numbers, numbers) || other.numbers == numbers) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accounts, selectedAccountId,
      numbers, const DeepCollectionEquality().hash(isVerified));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountVerifyStateImplCopyWith<_$AccountVerifyStateImpl> get copyWith =>
      __$$AccountVerifyStateImplCopyWithImpl<_$AccountVerifyStateImpl>(
          this, _$identity);
}

abstract class _AccountVerifyState extends AccountVerifyState {
  const factory _AccountVerifyState(
      {final LoadingState<List<AccountLink>> accounts,
      final int? selectedAccountId,
      final LoadingState<List<String>> numbers,
      final dynamic isVerified}) = _$AccountVerifyStateImpl;
  const _AccountVerifyState._() : super._();

  @override
  LoadingState<List<AccountLink>> get accounts;
  @override
  int? get selectedAccountId;
  @override
  LoadingState<List<String>> get numbers;
  @override
  dynamic get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$AccountVerifyStateImplCopyWith<_$AccountVerifyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
