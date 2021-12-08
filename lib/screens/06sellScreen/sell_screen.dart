import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/utils/utils.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 100.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    color: MColors.mdgrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: SizedBox(
                          width: 200.w,
                          height: 200.w,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.upload_outlined,
                                  size: 80.w,
                                  color: MColors.mgrey,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Upload',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: MColors.mlgrey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Your Photography',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: MColors.mlgrey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Style',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: MColors.mlgrey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const Hero(
          tag: "navBar",
          child: NavBar(
            pageIndex: 1,
          ),
        )
      ]),
    );
  }
}
