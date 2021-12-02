import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

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
          child: Center(
            child: Hero(
              tag: "splash",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wallpaper",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 54.sp, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Beautiful Photos",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
