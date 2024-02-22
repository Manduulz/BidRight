// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalInfoState {
  LoadingState<Bidder> get profile => throw _privateConstructorUsedError;
  Bidder? get newProfile => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalInfoStateCopyWith<PersonalInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoStateCopyWith<$Res> {
  factory $PersonalInfoStateCopyWith(
          PersonalInfoState value, $Res Function(PersonalInfoState) then) =
      _$PersonalInfoStateCopyWithImpl<$Res, PersonalInfoState>;
  @useResult
  $Res call({LoadingState<Bidder> profile, Bidder? newProfile, bool isSaving});

  $LoadingStateCopyWith<Bidder, $Res> get profile;
  $BidderCopyWith<$Res>? get newProfile;
}

/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res, $Val extends PersonalInfoState>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? newProfile = freezed,
    Object? isSaving = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as LoadingState<Bidder>,
      newProfile: freezed == newProfile
          ? _value.newProfile
          : newProfile // ignore: cast_nullable_to_non_nullable
              as Bidder?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<Bidder, $Res> get profile {
    return $LoadingStateCopyWith<Bidder, $Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BidderCopyWith<$Res>? get newProfile {
    if (_value.newProfile == null) {
      return null;
    }

    return $BidderCopyWith<$Res>(_value.newProfile!, (value) {
      return _then(_value.copyWith(newProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonalInfoStateImplCopyWith<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  factory _$$PersonalInfoStateImplCopyWith(_$PersonalInfoStateImpl value,
          $Res Function(_$PersonalInfoStateImpl) then) =
      __$$PersonalInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingState<Bidder> profile, Bidder? newProfile, bool isSaving});

  @override
  $LoadingStateCopyWith<Bidder, $Res> get profile;
  @override
  $BidderCopyWith<$Res>? get newProfile;
}

/// @nodoc
class __$$PersonalInfoStateImplCopyWithImpl<$Res>
    extends _$PersonalInfoStateCopyWithImpl<$Res, _$PersonalInfoStateImpl>
    implements _$$PersonalInfoStateImplCopyWith<$Res> {
  __$$PersonalInfoStateImplCopyWithImpl(_$PersonalInfoStateImpl _value,
      $Res Function(_$PersonalInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? newProfile = freezed,
    Object? isSaving = null,
  }) {
    return _then(_$PersonalInfoStateImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as LoadingState<Bidder>,
      newProfile: freezed == newProfile
          ? _value.newProfile
          : newProfile // ignore: cast_nullable_to_non_nullable
              as Bidder?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PersonalInfoStateImpl extends _PersonalInfoState {
  const _$PersonalInfoStateImpl(
      {this.profile = const Uninitialized(),
      this.newProfile,
      this.isSaving = false})
      : super._();

  @override
  @JsonKey()
  final LoadingState<Bidder> profile;
  @override
  final Bidder? newProfile;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'PersonalInfoState(profile: $profile, newProfile: $newProfile, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoStateImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.newProfile, newProfile) ||
                other.newProfile == newProfile) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, newProfile, isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoStateImplCopyWith<_$PersonalInfoStateImpl> get copyWith =>
      __$$PersonalInfoStateImplCopyWithImpl<_$PersonalInfoStateImpl>(
          this, _$identity);
}

abstract class _PersonalInfoState extends PersonalInfoState {
  const factory _PersonalInfoState(
      {final LoadingState<Bidder> profile,
      final Bidder? newProfile,
      final bool isSaving}) = _$PersonalInfoStateImpl;
  const _PersonalInfoState._() : super._();

  @override
  LoadingState<Bidder> get profile;
  @override
  Bidder? get newProfile;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$$PersonalInfoStateImplCopyWith<_$PersonalInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
