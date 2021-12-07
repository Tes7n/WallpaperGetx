import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  const NavBar({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
      child: Align(
        alignment: Alignment(0.h, 1.w),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
          child: BottomNavigationBar(
              selectedItemColor: Colors.white54,
              currentIndex: pageIndex,
              unselectedItemColor: Colors.grey[400],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: MColors.mdgrey,
              onTap: (int index) {
                Get.offAndToNamed("/$index");
              },
              items: items),
        ),
      ),
    );
  }
}

List<BottomNavigationBarItem> items = const [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home_outlined,
      size: 30.0,
    ),
    activeIcon: Icon(
      Icons.home_rounded,
      size: 30.0,
    ),
    label: "HOME",
  ),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.explore_outlined,
        size: 30.0,
      ),
      activeIcon: Icon(
        Icons.explore_rounded,
        size: 30.0,
      ),
      label: "EXPLORE"),
  BottomNavigationBarItem(
      icon: Icon(
        Icons.person_outline,
        size: 30.0,
      ),
      activeIcon: Icon(
        Icons.person_rounded,
        size: 30.0,
      ),
      label: "PROFILE"),
];
