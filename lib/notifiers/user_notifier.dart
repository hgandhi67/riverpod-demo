import 'package:demo_task/api/api_service.dart';
import 'package:demo_task/models/user_model.dart';
import 'package:demo_task/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<UserProviderState> {
  UserNotifier() : super(const UserProviderState(usersList: []));

  Future<User> getUsers({
    String? name,
    num? minAge,
    num? maxAge,
    int page = 1,
  }) async {
    final response = await apiService.fetchUsers(
      name: name,
      page: page,
      minAge: minAge,
      maxAge: maxAge,
    );

    if (response == null) {
      return User(count: 0, results: [], next: null, previous: null);
    }

    return response;
  }
}