import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

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
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 42.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "Beautiful Photos",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 20.sp, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200.h,
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
                        height: 12.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 24.h),
                            child: CustomElevatedButton(
                              child: Text(
                                "Sign up with Email",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.black),
                              ),
                              onPressed: () {
                                Get.off(() => SignupScreen(),
                                    transition: Transition.leftToRight);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
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
                                    transition: Transition.rightToLeft);
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
      ),
    );
  }
}
