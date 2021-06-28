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
class _$QuosPlayerStateTearOff {
  const _$QuosPlayerStateTearOff();

  _None none() {
    return const _None();
  }

  _Playing playing(
      {required QuosPlaylist playlist,
      required QuosMusic music,
      required int musicIndex,
      required Duration duration,
      required Duration position,
      required double progress}) {
    return _Playing(
      playlist: playlist,
      music: music,
      musicIndex: musicIndex,
      duration: duration,
      position: position,
      progress: progress,
    );
  }

  _Paused paused(
      {required QuosPlaylist playlist,
      required QuosMusic music,
      required int musicIndex,
      required Duration duration,
      required Duration position,
      required double progress}) {
    return _Paused(
      playlist: playlist,
      music: music,
      musicIndex: musicIndex,
      duration: duration,
      position: position,
      progress: progress,
    );
  }

  _Stopped stopped() {
    return const _Stopped();
  }
}

/// @nodoc
const $QuosPlayerState = _$QuosPlayerStateTearOff();

/// @nodoc
mixin _$QuosPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        playing,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        paused,
    required TResult Function() stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        playing,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuosPlayerStateCopyWith<$Res> {
  factory $QuosPlayerStateCopyWith(
          QuosPlayerState value, $Res Function(QuosPlayerState) then) =
      _$QuosPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuosPlayerStateCopyWithImpl<$Res>
    implements $QuosPlayerStateCopyWith<$Res> {
  _$QuosPlayerStateCopyWithImpl(this._value, this._then);

  final QuosPlayerState _value;
  // ignore: unused_field
  final $Res Function(QuosPlayerState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$QuosPlayerStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'QuosPlayerState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        playing,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        paused,
    required TResult Function() stopped,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        playing,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements QuosPlayerState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$PlayingCopyWith<$Res> {
  factory _$PlayingCopyWith(_Playing value, $Res Function(_Playing) then) =
      __$PlayingCopyWithImpl<$Res>;
  $Res call(
      {QuosPlaylist playlist,
      QuosMusic music,
      int musicIndex,
      Duration duration,
      Duration position,
      double progress});
}

/// @nodoc
class __$PlayingCopyWithImpl<$Res> extends _$QuosPlayerStateCopyWithImpl<$Res>
    implements _$PlayingCopyWith<$Res> {
  __$PlayingCopyWithImpl(_Playing _value, $Res Function(_Playing) _then)
      : super(_value, (v) => _then(v as _Playing));

  @override
  _Playing get _value => super._value as _Playing;

  @override
  $Res call({
    Object? playlist = freezed,
    Object? music = freezed,
    Object? musicIndex = freezed,
    Object? duration = freezed,
    Object? position = freezed,
    Object? progress = freezed,
  }) {
    return _then(_Playing(
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as QuosPlaylist,
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as QuosMusic,
      musicIndex: musicIndex == freezed
          ? _value.musicIndex
          : musicIndex // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$_Playing implements _Playing {
  const _$_Playing(
      {required this.playlist,
      required this.music,
      required this.musicIndex,
      required this.duration,
      required this.position,
      required this.progress});

  @override
  final QuosPlaylist playlist;
  @override
  final QuosMusic music;
  @override
  final int musicIndex;
  @override
  final Duration duration;
  @override
  final Duration position;
  @override
  final double progress;

  @override
  String toString() {
    return 'QuosPlayerState.playing(playlist: $playlist, music: $music, musicIndex: $musicIndex, duration: $duration, position: $position, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Playing &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)) &&
            (identical(other.music, music) ||
                const DeepCollectionEquality().equals(other.music, music)) &&
            (identical(other.musicIndex, musicIndex) ||
                const DeepCollectionEquality()
                    .equals(other.musicIndex, musicIndex)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlist) ^
      const DeepCollectionEquality().hash(music) ^
      const DeepCollectionEquality().hash(musicIndex) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  _$PlayingCopyWith<_Playing> get copyWith =>
      __$PlayingCopyWithImpl<_Playing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        playing,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        paused,
    required TResult Function() stopped,
  }) {
    return playing(playlist, music, musicIndex, duration, position, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        playing,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(playlist, music, musicIndex, duration, position, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing implements QuosPlayerState {
  const factory _Playing(
      {required QuosPlaylist playlist,
      required QuosMusic music,
      required int musicIndex,
      required Duration duration,
      required Duration position,
      required double progress}) = _$_Playing;

  QuosPlaylist get playlist => throw _privateConstructorUsedError;
  QuosMusic get music => throw _privateConstructorUsedError;
  int get musicIndex => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlayingCopyWith<_Playing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
  $Res call(
      {QuosPlaylist playlist,
      QuosMusic music,
      int musicIndex,
      Duration duration,
      Duration position,
      double progress});
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$QuosPlayerStateCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;

  @override
  $Res call({
    Object? playlist = freezed,
    Object? music = freezed,
    Object? musicIndex = freezed,
    Object? duration = freezed,
    Object? position = freezed,
    Object? progress = freezed,
  }) {
    return _then(_Paused(
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as QuosPlaylist,
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as QuosMusic,
      musicIndex: musicIndex == freezed
          ? _value.musicIndex
          : musicIndex // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$_Paused implements _Paused {
  const _$_Paused(
      {required this.playlist,
      required this.music,
      required this.musicIndex,
      required this.duration,
      required this.position,
      required this.progress});

  @override
  final QuosPlaylist playlist;
  @override
  final QuosMusic music;
  @override
  final int musicIndex;
  @override
  final Duration duration;
  @override
  final Duration position;
  @override
  final double progress;

  @override
  String toString() {
    return 'QuosPlayerState.paused(playlist: $playlist, music: $music, musicIndex: $musicIndex, duration: $duration, position: $position, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Paused &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)) &&
            (identical(other.music, music) ||
                const DeepCollectionEquality().equals(other.music, music)) &&
            (identical(other.musicIndex, musicIndex) ||
                const DeepCollectionEquality()
                    .equals(other.musicIndex, musicIndex)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlist) ^
      const DeepCollectionEquality().hash(music) ^
      const DeepCollectionEquality().hash(musicIndex) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  _$PausedCopyWith<_Paused> get copyWith =>
      __$PausedCopyWithImpl<_Paused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        playing,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        paused,
    required TResult Function() stopped,
  }) {
    return paused(playlist, music, musicIndex, duration, position, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        playing,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(playlist, music, musicIndex, duration, position, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements QuosPlayerState {
  const factory _Paused(
      {required QuosPlaylist playlist,
      required QuosMusic music,
      required int musicIndex,
      required Duration duration,
      required Duration position,
      required double progress}) = _$_Paused;

  QuosPlaylist get playlist => throw _privateConstructorUsedError;
  QuosMusic get music => throw _privateConstructorUsedError;
  int get musicIndex => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PausedCopyWith<_Paused> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StoppedCopyWith<$Res> {
  factory _$StoppedCopyWith(_Stopped value, $Res Function(_Stopped) then) =
      __$StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StoppedCopyWithImpl<$Res> extends _$QuosPlayerStateCopyWithImpl<$Res>
    implements _$StoppedCopyWith<$Res> {
  __$StoppedCopyWithImpl(_Stopped _value, $Res Function(_Stopped) _then)
      : super(_value, (v) => _then(v as _Stopped));

  @override
  _Stopped get _value => super._value as _Stopped;
}

/// @nodoc
class _$_Stopped implements _Stopped {
  const _$_Stopped();

  @override
  String toString() {
    return 'QuosPlayerState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        playing,
    required TResult Function(
            QuosPlaylist playlist,
            QuosMusic music,
            int musicIndex,
            Duration duration,
            Duration position,
            double progress)
        paused,
    required TResult Function() stopped,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        playing,
    TResult Function(QuosPlaylist playlist, QuosMusic music, int musicIndex,
            Duration duration, Duration position, double progress)?
        paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements QuosPlayerState {
  const factory _Stopped() = _$_Stopped;
}
