import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quos/modules/music/model.dart';

part 'state.freezed.dart';

@freezed
abstract class LibraryUpdateState with _$LibraryUpdateState {
  const factory LibraryUpdateState.checkingUpdates() = _CheckingUpdates;
  const factory LibraryUpdateState.updating({
    required int total,
    required int index,
    required QuosMusic music,
  }) = _Updating;
  const factory LibraryUpdateState.updated() = _Updated;
  const factory LibraryUpdateState.deleting() = _Deleting;
  const factory LibraryUpdateState.error() = _Error;
}
