import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class InitState with _$InitState {
  const factory InitState.initializing() = _Initializing;
  const factory InitState.initialized() = _Initialized;
  const factory InitState.error() = _Error;
}
