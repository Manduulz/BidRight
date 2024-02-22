// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  Object get screen => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)
        loggedOut,
    required TResult Function(LoggedInScreen screen) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult? Function(LoggedInScreen screen)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult Function(LoggedInScreen screen)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoggedOutScreen screen, LoggedInScreen nextScreen});

  $LoggedOutScreenCopyWith<$Res> get screen;
  $LoggedInScreenCopyWith<$Res> get nextScreen;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? nextScreen = null,
  }) {
    return _then(_$LoggedOutImpl(
      null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as LoggedOutScreen,
      nextScreen: null == nextScreen
          ? _value.nextScreen
          : nextScreen // ignore: cast_nullable_to_non_nullable
              as LoggedInScreen,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggedOutScreenCopyWith<$Res> get screen {
    return $LoggedOutScreenCopyWith<$Res>(_value.screen, (value) {
      return _then(_value.copyWith(screen: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggedInScreenCopyWith<$Res> get nextScreen {
    return $LoggedInScreenCopyWith<$Res>(_value.nextScreen, (value) {
      return _then(_value.copyWith(nextScreen: value));
    });
  }
}

/// @nodoc

class _$LoggedOutImpl extends _LoggedOut {
  const _$LoggedOutImpl(this.screen,
      {this.nextScreen = const LoggedInScreen.home()})
      : super._();

  @override
  final LoggedOutScreen screen;
  @override
  @JsonKey()
  final LoggedInScreen nextScreen;

  @override
  String toString() {
    return 'AppState.loggedOut(screen: $screen, nextScreen: $nextScreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedOutImpl &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.nextScreen, nextScreen) ||
                other.nextScreen == nextScreen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screen, nextScreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      __$$LoggedOutImplCopyWithImpl<_$LoggedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)
        loggedOut,
    required TResult Function(LoggedInScreen screen) loggedIn,
  }) {
    return loggedOut(screen, nextScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult? Function(LoggedInScreen screen)? loggedIn,
  }) {
    return loggedOut?.call(screen, nextScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult Function(LoggedInScreen screen)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(screen, nextScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut extends AppState {
  const factory _LoggedOut(final LoggedOutScreen screen,
      {final LoggedInScreen nextScreen}) = _$LoggedOutImpl;
  const _LoggedOut._() : super._();

  @override
  LoggedOutScreen get screen;
  LoggedInScreen get nextScreen;
  @JsonKey(ignore: true)
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoggedInScreen screen});

  $LoggedInScreenCopyWith<$Res> get screen;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
  }) {
    return _then(_$LoggedInImpl(
      null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as LoggedInScreen,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggedInScreenCopyWith<$Res> get screen {
    return $LoggedInScreenCopyWith<$Res>(_value.screen, (value) {
      return _then(_value.copyWith(screen: value));
    });
  }
}

/// @nodoc

class _$LoggedInImpl extends _LoggedIn {
  const _$LoggedInImpl(this.screen) : super._();

  @override
  final LoggedInScreen screen;

  @override
  String toString() {
    return 'AppState.loggedIn(screen: $screen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.screen, screen) || other.screen == screen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)
        loggedOut,
    required TResult Function(LoggedInScreen screen) loggedIn,
  }) {
    return loggedIn(screen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult? Function(LoggedInScreen screen)? loggedIn,
  }) {
    return loggedIn?.call(screen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoggedOutScreen screen, LoggedInScreen nextScreen)?
        loggedOut,
    TResult Function(LoggedInScreen screen)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(screen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn extends AppState {
  const factory _LoggedIn(final LoggedInScreen screen) = _$LoggedInImpl;
  const _LoggedIn._() : super._();

  @override
  LoggedInScreen get screen;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoggedOutScreen {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() onboarding,
    required TResult Function(dynamic shouldLoginImmediately) login,
    required TResult Function() register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? onboarding,
    TResult? Function(dynamic shouldLoginImmediately)? login,
    TResult? Function()? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? onboarding,
    TResult Function(dynamic shouldLoginImmediately)? login,
    TResult Function()? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
    required TResult Function(_Onboarding value) onboarding,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Onboarding value)? onboarding,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    TResult Function(_Onboarding value)? onboarding,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedOutScreenCopyWith<$Res> {
  factory $LoggedOutScreenCopyWith(
          LoggedOutScreen value, $Res Function(LoggedOutScreen) then) =
      _$LoggedOutScreenCopyWithImpl<$Res, LoggedOutScreen>;
}

/// @nodoc
class _$LoggedOutScreenCopyWithImpl<$Res, $Val extends LoggedOutScreen>
    implements $LoggedOutScreenCopyWith<$Res> {
  _$LoggedOutScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashImplCopyWith<$Res> {
  factory _$$SplashImplCopyWith(
          _$SplashImpl value, $Res Function(_$SplashImpl) then) =
      __$$SplashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashImplCopyWithImpl<$Res>
    extends _$LoggedOutScreenCopyWithImpl<$Res, _$SplashImpl>
    implements _$$SplashImplCopyWith<$Res> {
  __$$SplashImplCopyWithImpl(
      _$SplashImpl _value, $Res Function(_$SplashImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashImpl extends _Splash {
  const _$SplashImpl() : super._();

  @override
  String toString() {
    return 'LoggedOutScreen.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() onboarding,
    required TResult Function(dynamic shouldLoginImmediately) login,
    required TResult Function() register,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? onboarding,
    TResult? Function(dynamic shouldLoginImmediately)? login,
    TResult? Function()? register,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? onboarding,
    TResult Function(dynamic shouldLoginImmediately)? login,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
    required TResult Function(_Onboarding value) onboarding,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Onboarding value)? onboarding,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    TResult Function(_Onboarding value)? onboarding,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class _Splash extends LoggedOutScreen {
  const factory _Splash() = _$SplashImpl;
  const _Splash._() : super._();
}

/// @nodoc
abstract class _$$OnboardingImplCopyWith<$Res> {
  factory _$$OnboardingImplCopyWith(
          _$OnboardingImpl value, $Res Function(_$OnboardingImpl) then) =
      __$$OnboardingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingImplCopyWithImpl<$Res>
    extends _$LoggedOutScreenCopyWithImpl<$Res, _$OnboardingImpl>
    implements _$$OnboardingImplCopyWith<$Res> {
  __$$OnboardingImplCopyWithImpl(
      _$OnboardingImpl _value, $Res Function(_$OnboardingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnboardingImpl extends _Onboarding {
  const _$OnboardingImpl() : super._();

  @override
  String toString() {
    return 'LoggedOutScreen.onboarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnboardingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() onboarding,
    required TResult Function(dynamic shouldLoginImmediately) login,
    required TResult Function() register,
  }) {
    return onboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? onboarding,
    TResult? Function(dynamic shouldLoginImmediately)? login,
    TResult? Function()? register,
  }) {
    return onboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? onboarding,
    TResult Function(dynamic shouldLoginImmediately)? login,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
    required TResult Function(_Onboarding value) onboarding,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return onboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Onboarding value)? onboarding,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return onboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    TResult Function(_Onboarding value)? onboarding,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding(this);
    }
    return orElse();
  }
}

abstract class _Onboarding extends LoggedOutScreen {
  const factory _Onboarding() = _$OnboardingImpl;
  const _Onboarding._() : super._();
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic shouldLoginImmediately});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoggedOutScreenCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldLoginImmediately = freezed,
  }) {
    return _then(_$LoginImpl(
      shouldLoginImmediately: freezed == shouldLoginImmediately
          ? _value.shouldLoginImmediately!
          : shouldLoginImmediately,
    ));
  }
}

/// @nodoc

class _$LoginImpl extends _Login {
  const _$LoginImpl({this.shouldLoginImmediately = true}) : super._();

  @override
  @JsonKey()
  final dynamic shouldLoginImmediately;

  @override
  String toString() {
    return 'LoggedOutScreen.login(shouldLoginImmediately: $shouldLoginImmediately)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            const DeepCollectionEquality()
                .equals(other.shouldLoginImmediately, shouldLoginImmediately));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(shouldLoginImmediately));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() onboarding,
    required TResult Function(dynamic shouldLoginImmediately) login,
    required TResult Function() register,
  }) {
    return login(shouldLoginImmediately);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? onboarding,
    TResult? Function(dynamic shouldLoginImmediately)? login,
    TResult? Function()? register,
  }) {
    return login?.call(shouldLoginImmediately);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? onboarding,
    TResult Function(dynamic shouldLoginImmediately)? login,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(shouldLoginImmediately);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
    required TResult Function(_Onboarding value) onboarding,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Onboarding value)? onboarding,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    TResult Function(_Onboarding value)? onboarding,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends LoggedOutScreen {
  const factory _Login({final dynamic shouldLoginImmediately}) = _$LoginImpl;
  const _Login._() : super._();

  dynamic get shouldLoginImmediately;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$LoggedOutScreenCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl extends _Register {
  const _$RegisterImpl() : super._();

  @override
  String toString() {
    return 'LoggedOutScreen.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() onboarding,
    required TResult Function(dynamic shouldLoginImmediately) login,
    required TResult Function() register,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? onboarding,
    TResult? Function(dynamic shouldLoginImmediately)? login,
    TResult? Function()? register,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? onboarding,
    TResult Function(dynamic shouldLoginImmediately)? login,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
    required TResult Function(_Onboarding value) onboarding,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Onboarding value)? onboarding,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    TResult Function(_Onboarding value)? onboarding,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register extends LoggedOutScreen {
  const factory _Register() = _$RegisterImpl;
  const _Register._() : super._();
}

/// @nodoc
mixin _$LoggedInScreen {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int lotId, int? auctionId, int? propertyId) lot,
    required TResult Function(int lotId) winning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult? Function(int lotId)? winning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult Function(int lotId)? winning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_LotDetail value) lot,
    required TResult Function(_Winning value) winning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? home,
    TResult? Function(_LotDetail value)? lot,
    TResult? Function(_Winning value)? winning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_LotDetail value)? lot,
    TResult Function(_Winning value)? winning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedInScreenCopyWith<$Res> {
  factory $LoggedInScreenCopyWith(
          LoggedInScreen value, $Res Function(LoggedInScreen) then) =
      _$LoggedInScreenCopyWithImpl<$Res, LoggedInScreen>;
}

/// @nodoc
class _$LoggedInScreenCopyWithImpl<$Res, $Val extends LoggedInScreen>
    implements $LoggedInScreenCopyWith<$Res> {
  _$LoggedInScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$LoggedInScreenCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeImpl extends _Home {
  const _$HomeImpl() : super._();

  @override
  String toString() {
    return 'LoggedInScreen.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int lotId, int? auctionId, int? propertyId) lot,
    required TResult Function(int lotId) winning,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult? Function(int lotId)? winning,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult Function(int lotId)? winning,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_LotDetail value) lot,
    required TResult Function(_Winning value) winning,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? home,
    TResult? Function(_LotDetail value)? lot,
    TResult? Function(_Winning value)? winning,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_LotDetail value)? lot,
    TResult Function(_Winning value)? winning,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home extends LoggedInScreen {
  const factory _Home() = _$HomeImpl;
  const _Home._() : super._();
}

/// @nodoc
abstract class _$$LotDetailImplCopyWith<$Res> {
  factory _$$LotDetailImplCopyWith(
          _$LotDetailImpl value, $Res Function(_$LotDetailImpl) then) =
      __$$LotDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int lotId, int? auctionId, int? propertyId});
}

/// @nodoc
class __$$LotDetailImplCopyWithImpl<$Res>
    extends _$LoggedInScreenCopyWithImpl<$Res, _$LotDetailImpl>
    implements _$$LotDetailImplCopyWith<$Res> {
  __$$LotDetailImplCopyWithImpl(
      _$LotDetailImpl _value, $Res Function(_$LotDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? auctionId = freezed,
    Object? propertyId = freezed,
  }) {
    return _then(_$LotDetailImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: freezed == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LotDetailImpl extends _LotDetail {
  const _$LotDetailImpl({required this.lotId, this.auctionId, this.propertyId})
      : super._();

  @override
  final int lotId;
  @override
  final int? auctionId;
  @override
  final int? propertyId;

  @override
  String toString() {
    return 'LoggedInScreen.lot(lotId: $lotId, auctionId: $auctionId, propertyId: $propertyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotDetailImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId, auctionId, propertyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotDetailImplCopyWith<_$LotDetailImpl> get copyWith =>
      __$$LotDetailImplCopyWithImpl<_$LotDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int lotId, int? auctionId, int? propertyId) lot,
    required TResult Function(int lotId) winning,
  }) {
    return lot(lotId, auctionId, propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult? Function(int lotId)? winning,
  }) {
    return lot?.call(lotId, auctionId, propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult Function(int lotId)? winning,
    required TResult orElse(),
  }) {
    if (lot != null) {
      return lot(lotId, auctionId, propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_LotDetail value) lot,
    required TResult Function(_Winning value) winning,
  }) {
    return lot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? home,
    TResult? Function(_LotDetail value)? lot,
    TResult? Function(_Winning value)? winning,
  }) {
    return lot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_LotDetail value)? lot,
    TResult Function(_Winning value)? winning,
    required TResult orElse(),
  }) {
    if (lot != null) {
      return lot(this);
    }
    return orElse();
  }
}

abstract class _LotDetail extends LoggedInScreen {
  const factory _LotDetail(
      {required final int lotId,
      final int? auctionId,
      final int? propertyId}) = _$LotDetailImpl;
  const _LotDetail._() : super._();

  int get lotId;
  int? get auctionId;
  int? get propertyId;
  @JsonKey(ignore: true)
  _$$LotDetailImplCopyWith<_$LotDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WinningImplCopyWith<$Res> {
  factory _$$WinningImplCopyWith(
          _$WinningImpl value, $Res Function(_$WinningImpl) then) =
      __$$WinningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int lotId});
}

/// @nodoc
class __$$WinningImplCopyWithImpl<$Res>
    extends _$LoggedInScreenCopyWithImpl<$Res, _$WinningImpl>
    implements _$$WinningImplCopyWith<$Res> {
  __$$WinningImplCopyWithImpl(
      _$WinningImpl _value, $Res Function(_$WinningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
  }) {
    return _then(_$WinningImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WinningImpl extends _Winning {
  const _$WinningImpl({required this.lotId}) : super._();

  @override
  final int lotId;

  @override
  String toString() {
    return 'LoggedInScreen.winning(lotId: $lotId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinningImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lotId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinningImplCopyWith<_$WinningImpl> get copyWith =>
      __$$WinningImplCopyWithImpl<_$WinningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int lotId, int? auctionId, int? propertyId) lot,
    required TResult Function(int lotId) winning,
  }) {
    return winning(lotId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult? Function(int lotId)? winning,
  }) {
    return winning?.call(lotId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int lotId, int? auctionId, int? propertyId)? lot,
    TResult Function(int lotId)? winning,
    required TResult orElse(),
  }) {
    if (winning != null) {
      return winning(lotId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Home value) home,
    required TResult Function(_LotDetail value) lot,
    required TResult Function(_Winning value) winning,
  }) {
    return winning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Home value)? home,
    TResult? Function(_LotDetail value)? lot,
    TResult? Function(_Winning value)? winning,
  }) {
    return winning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Home value)? home,
    TResult Function(_LotDetail value)? lot,
    TResult Function(_Winning value)? winning,
    required TResult orElse(),
  }) {
    if (winning != null) {
      return winning(this);
    }
    return orElse();
  }
}

abstract class _Winning extends LoggedInScreen {
  const factory _Winning({required final int lotId}) = _$WinningImpl;
  const _Winning._() : super._();

  int get lotId;
  @JsonKey(ignore: true)
  _$$WinningImplCopyWith<_$WinningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
