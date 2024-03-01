import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/profile/presentation/cubit/profile_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  String name = '';
  getProfile() async {
    try {
      emit(ProfileLoading());
      await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
          .get()
          .then((value) {
        name = value.docs.first['name'];
        emit(ProfileSuccess());
        if (kDebugMode) {
          print(name);
        }
      });
    } on Exception catch (e) {
      emit(ProfileError(errorMsg: e.toString()));
    }
  }
}
