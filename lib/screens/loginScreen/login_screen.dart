import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper/controllers/auth_controller.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/w1.png'), fit: BoxFit.cover),
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
                              height: 60.h,
                            ),
                            Form(
                              // key: controller.loginFormKey,
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
                                        controller: AuthController
                                            .instance.emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        onSaved: (value) {
                                          AuthController.instance.email =
                                              value!;
                                        },
                                        validator: (value) {
                                          return AuthController.instance
                                              .validateEmail(value!);
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
                                        controller: AuthController
                                            .instance.passwordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        onSaved: (value) {
                                          AuthController.instance.password =
                                              value!;
                                        },
                                        validator: (value) {
                                          return AuthController.instance
                                              .validatePassword(value!);
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13.h),
                                    child: CustomElevatedButton(
                                      child: Text(
                                        "Login",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(color: Colors.black),
                                      ),
                                      onPressed: () {
                                        AuthController.instance.checkLogin();
                                      },
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
                                    "Don't have an account, ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.normal),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.offAll(() => SignupScreen());
                                    },
                                    child: Text(
                                      "Create now",
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
}
