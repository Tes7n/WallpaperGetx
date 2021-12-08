import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          size: 30.h,
                          color: MColors.mgrey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MColors.mdgrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.w, 15.h, 25.w, 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.h),
                                    child: Text(
                                      'M. Thomsans',
                                      style: TextStyle(
                                          fontSize: 24.sp,
                                          color: MColors.mlgrey,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.h),
                                    child: Text(
                                      'thomsan@gmail.com',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: MColors.mlgrey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4.h),
                                    child: Text(
                                      'UN, New York',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: MColors.mlgrey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.h),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.image,
                                          size: 30.h,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          '85  Images',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: MColors.mlgrey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Hero(
            tag: "navBar",
            child: NavBar(
              pageIndex: 2,
            ),
          ),
          Positioned(
              top: 60.h,
              left: 25.w,
              child: Container(
                width: 150.w,
                height: 200.h,
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/p.png',
                  fit: BoxFit.fitHeight,
                ),
              ))
        ],
      ),
    );
  }
}
