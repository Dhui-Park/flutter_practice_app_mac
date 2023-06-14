import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_practice/features/users/models/user_profile_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepository {
  // access to db
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // create profile
  Future<void> createProfile(UserProfileModel profile) async {
    // putting the profile on the DB
    await _db.collection("users").doc(profile.uid).set(profile.toJson());
  }

  // fetch the profile
  Future<Map<String, dynamic>?> findProfile(String uid) async {
    final doc = await _db.collection("users").doc(uid).get();
    return doc.data();
  }

  // get profile
  // update profile
}

final userRepo = Provider(
  (ref) => UserRepository(),
);
