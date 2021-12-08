import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/services/api_service.dart';

class AuthController extends GetxController {
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  @override
  void onClose() {}

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => AuthScreen());
    } else {
      Get.offAll(() => HomeScreen());
    }
  }

  void signUp(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar('Firebase', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white70,
          colorText: Colors.black);
      print(e.toString());
    }
  }

  void signIn(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('Firebase', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white70,
          colorText: Colors.black);
      print(e.toString());
    }
  }

  void signOut() async {
    await auth.signOut();
  }
}
