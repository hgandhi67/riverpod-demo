import 'package:demo_task/models/user_results_model.dart';
import 'package:demo_task/notifiers/user_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_provider.freezed.dart';

final usersProvider = StateNotifierProvider<UserNotifier, UserProviderState>((ref) {
  return UserNotifier();
});

@freezed
class UserProviderState with _$UserProviderState {
  const factory UserProviderState({
    @Default(1) int page,
    required List<Result> usersList,
    @Default(true) bool loading,
    @Default(false) bool loadError,
    @Default(false) bool loadComplete,
  }) = _UserProviderState;

  const UserProviderState._();
}