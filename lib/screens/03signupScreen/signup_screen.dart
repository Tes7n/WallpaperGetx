import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper/controllers/controllers.dart';

import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';

class SignupScreen extends GetView<AuthController> {
  //TODO :Create Validation controller

  SignupScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/w2.png'), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      child: Hero(
                        tag: 'tag-w',
                        child: Column(
                          children: [
                            Text(
                              "Wallpaper",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 42.sp,
                                      fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              "Beautiful Photos",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: 'tag-e',
                              child: Column(
                                children: [
                                  Text(
                                    "Explore",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 34.sp,
                                            fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    "Explore beautiful wallpapers and set them in your devices.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Form(
                              key: _loginFormKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.h),
                                    child: Center(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusColor: Colors.black,
                                          hintText: "Email",
                                        ),
                                        controller: _emailController,
                                        validator: (value) {
                                          return _validateEmail(value!);
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.h),
                                    child: Center(
                                      child: TextFormField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusColor: Colors.black,
                                          hintText: "Password",
                                        ),
                                        controller: _passwordController,
                                        validator: (value) {
                                          return _validatePassword(value!);
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.h),
                                    child: Center(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusColor: Colors.black,
                                          hintText: "Retpe Password",
                                        ),
                                        controller: _retypePasswordController,
                                        validator: (value) {
                                          return _validateRetypePassword(
                                              value!);
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13.h),
                                    child: Obx(
                                      () => controller.isLoading.isTrue
                                          ? CircularProgressIndicator(
                                              color: Colors.indigo[700],
                                            )
                                          : CustomElevatedButton(
                                              child: Text(
                                                "Sign Up",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                        color: Colors.black),
                                              ),
                                              onPressed: () {
                                                _checkLogin();
                                                controller.signUp(
                                                    _emailController.text,
                                                    _passwordController.text);
                                              },
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account, ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.normal),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.offAll(() => LoginScreen(),
                                          transition: Transition.leftToRight);
                                    },
                                    child: Text(
                                      "Login now",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? _validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  String? _validateRetypePassword(String value) {
    if (value != _passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  void _checkLogin() {
    final isValid = _loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _loginFormKey.currentState!.save();
  }
}
