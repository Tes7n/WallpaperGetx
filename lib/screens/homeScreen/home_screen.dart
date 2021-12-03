import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wallpaper/controllers/auth_controller.dart';
import 'package:wallpaper/controllers/home_controller.dart';
import 'package:wallpaper/utils/utils.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 13.h),
          child: CustomElevatedButton(
            child: Text(
              "Logout",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black),
            ),
            onPressed: () {
              print('pressed');
              controller.signOut();
            },
          ),
        ),
      ),
    );
  }
}
