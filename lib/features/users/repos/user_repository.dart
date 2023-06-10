import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_practice/features/users/models/user_profile_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepository {
  // access to db
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // create profile
  Future<void> createProfile(UserProfileModel profile) async {
    await _db.collection("users").doc(profile.uid).set(profile.toJson());
  }
  // get profile
  // update profile
}

final userRepo = Provider(
  (ref) => UserRepository(),
);
