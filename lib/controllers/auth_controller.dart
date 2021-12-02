import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  GlobalKey<FormState>? loginFormKey;

  late TextEditingController emailController,
      passwordController,
      retypePasswordController;
  var email = '';
  var password = '';
  var retypePassword = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    retypePasswordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  String? validateRetypePassword(String value) {
    if (value != passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey!.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey!.currentState!.save();
  }
}
