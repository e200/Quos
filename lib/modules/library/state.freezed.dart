// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LibraryUpdateStateTearOff {
  const _$LibraryUpdateStateTearOff();

  _CheckingUpdates checkingUpdates() {
    return const _CheckingUpdates();
  }

  _Updating updating(
      {required int total, required int index, required QuosMusic music}) {
    return _Updating(
      total: total,
      index: index,
      music: music,
    );
  }

  _Updated updated() {
    return const _Updated();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LibraryUpdateState = _$LibraryUpdateStateTearOff();

/// @nodoc
mixin _$LibraryUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkingUpdates,
    required TResult Function(int total, int index, QuosMusic music) updating,
    required TResult Function() updated,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkingUpdates,
    TResult Function(int total, int index, QuosMusic music)? updating,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckingUpdates value) checkingUpdates,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckingUpdates value)? checkingUpdates,
    TResult Function(_Updating value)? updating,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryUpdateStateCopyWith<$Res> {
  factory $LibraryUpdateStateCopyWith(
          LibraryUpdateState value, $Res Function(LibraryUpdateState) then) =
      _$LibraryUpdateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LibraryUpdateStateCopyWithImpl<$Res>
    implements $LibraryUpdateStateCopyWith<$Res> {
  _$LibraryUpdateStateCopyWithImpl(this._value, this._then);

  final LibraryUpdateState _value;
  // ignore: unused_field
  final $Res Function(LibraryUpdateState) _then;
}

/// @nodoc
abstract class _$CheckingUpdatesCopyWith<$Res> {
  factory _$CheckingUpdatesCopyWith(
          _CheckingUpdates value, $Res Function(_CheckingUpdates) then) =
      __$CheckingUpdatesCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckingUpdatesCopyWithImpl<$Res>
    extends _$LibraryUpdateStateCopyWithImpl<$Res>
    implements _$CheckingUpdatesCopyWith<$Res> {
  __$CheckingUpdatesCopyWithImpl(
      _CheckingUpdates _value, $Res Function(_CheckingUpdates) _then)
      : super(_value, (v) => _then(v as _CheckingUpdates));

  @override
  _CheckingUpdates get _value => super._value as _CheckingUpdates;
}

/// @nodoc
class _$_CheckingUpdates implements _CheckingUpdates {
  const _$_CheckingUpdates();

  @override
  String toString() {
    return 'LibraryUpdateState.checkingUpdates()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckingUpdates);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkingUpdates,
    required TResult Function(int total, int index, QuosMusic music) updating,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return checkingUpdates();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkingUpdates,
    TResult Function(int total, int index, QuosMusic music)? updating,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (checkingUpdates != null) {
      return checkingUpdates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckingUpdates value) checkingUpdates,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return checkingUpdates(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckingUpdates value)? checkingUpdates,
    TResult Function(_Updating value)? updating,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkingUpdates != null) {
      return checkingUpdates(this);
    }
    return orElse();
  }
}

abstract class _CheckingUpdates implements LibraryUpdateState {
  const factory _CheckingUpdates() = _$_CheckingUpdates;
}

/// @nodoc
abstract class _$UpdatingCopyWith<$Res> {
  factory _$UpdatingCopyWith(_Updating value, $Res Function(_Updating) then) =
      __$UpdatingCopyWithImpl<$Res>;
  $Res call({int total, int index, QuosMusic music});
}

/// @nodoc
class __$UpdatingCopyWithImpl<$Res>
    extends _$LibraryUpdateStateCopyWithImpl<$Res>
    implements _$UpdatingCopyWith<$Res> {
  __$UpdatingCopyWithImpl(_Updating _value, $Res Function(_Updating) _then)
      : super(_value, (v) => _then(v as _Updating));

  @override
  _Updating get _value => super._value as _Updating;

  @override
  $Res call({
    Object? total = freezed,
    Object? index = freezed,
    Object? music = freezed,
  }) {
    return _then(_Updating(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as QuosMusic,
    ));
  }
}

/// @nodoc
class _$_Updating implements _Updating {
  const _$_Updating(
      {required this.total, required this.index, required this.music});

  @override
  final int total;
  @override
  final int index;
  @override
  final QuosMusic music;

  @override
  String toString() {
    return 'LibraryUpdateState.updating(total: $total, index: $index, music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updating &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.music, music) ||
                const DeepCollectionEquality().equals(other.music, music)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(music);

  @JsonKey(ignore: true)
  @override
  _$UpdatingCopyWith<_Updating> get copyWith =>
      __$UpdatingCopyWithImpl<_Updating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkingUpdates,
    required TResult Function(int total, int index, QuosMusic music) updating,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return updating(total, index, music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkingUpdates,
    TResult Function(int total, int index, QuosMusic music)? updating,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(total, index, music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckingUpdates value) checkingUpdates,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckingUpdates value)? checkingUpdates,
    TResult Function(_Updating value)? updating,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _Updating implements LibraryUpdateState {
  const factory _Updating(
      {required int total,
      required int index,
      required QuosMusic music}) = _$_Updating;

  int get total => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  QuosMusic get music => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatingCopyWith<_Updating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$LibraryUpdateStateCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated();

  @override
  String toString() {
    return 'LibraryUpdateState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Updated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkingUpdates,
    required TResult Function(int total, int index, QuosMusic music) updating,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkingUpdates,
    TResult Function(int total, int index, QuosMusic music)? updating,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckingUpdates value) checkingUpdates,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckingUpdates value)? checkingUpdates,
    TResult Function(_Updating value)? updating,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements LibraryUpdateState {
  const factory _Updated() = _$_Updated;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LibraryUpdateStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'LibraryUpdateState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkingUpdates,
    required TResult Function(int total, int index, QuosMusic music) updating,
    required TResult Function() updated,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkingUpdates,
    TResult Function(int total, int index, QuosMusic music)? updating,
    TResult Function()? updated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckingUpdates value) checkingUpdates,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckingUpdates value)? checkingUpdates,
    TResult Function(_Updating value)? updating,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LibraryUpdateState {
  const factory _Error() = _$_Error;
}
