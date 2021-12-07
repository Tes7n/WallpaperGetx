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
            appBar: AppBar(
              title: Text(
                "ProfileScreen",
                style: Theme.of(context).textTheme.headline4,
              ),
              backgroundColor: Colors.black,
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(),
              ),
            ),
          ),
          const Hero(
            tag: "navBar",
            child: NavBar(
              pageIndex: 2,
            ),
          )
        ],
      ),
    );
  }
}
