import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/screens/screens.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
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
    //  ever(_user, _initialScreen);
  }

  @override
  void onClose() {}

  // _initialScreen(User? user) {
  //   if (user == null) {
  //     Get.offAll(() => AuthScreen());
  //   } else {
  //     Get.offAll(() => HomeScreen());
  //   }
  // }

  void signUp(String email, password) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => HomeScreen(), transition: Transition.rightToLeft);
      isLoading.value = false;
    } catch (e) {
      Get.snackbar('Firebase', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white70,
          colorText: Colors.black);
      isLoading.value = false;
      print(e.toString());
    }
  }

  void signIn(String email, password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(() => HomeScreen(), transition: Transition.rightToLeft);
      isLoading.value = false;
    } catch (e) {
      Get.snackbar('Firebase', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white70,
          colorText: Colors.black);
      isLoading.value = false;
      print(e.toString());
    }
  }

  void signOut() async {
    await auth.signOut();
  }
}
