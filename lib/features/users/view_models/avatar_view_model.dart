import 'dart:async';
import 'dart:io';

import 'package:flutter_practice/features/authentication/repos/authentication_repo.dart';
import 'package:flutter_practice/features/users/repos/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AvatarViewModel extends AsyncNotifier<void> {
  late final UserRepository _respository;

  @override
  FutureOr<void> build() {
    _respository = ref.read(userRepo);
  }

  Future<void> uploadAvatar(File file) async {
    state = const AsyncValue.loading();
    final fileName = ref.read(authRepo).user!.uid;
    _respository.uploadAvatar(file, fileName);
    state = await AsyncValue.guard(
      () async => await _respository.uploadAvatar(file, fileName),
    );
  }
}
