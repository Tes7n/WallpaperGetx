import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper/utils/utils.dart';

class WallpaperScreen extends StatelessWidget {
  final ImageData imageData;

  WallpaperScreen({required this.imageData});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: SizedBox(
                    height: 30.h,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                        iconSize: 25.h,
                        color: MColors.mgrey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: SizedBox(
                    height: 350.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Hero(
                          tag: imageData.imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.network(imageData.imageUrl,
                                fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'American Wolf',
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    Text(
                                      'Thanks to M. Thomsans',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_outlined))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: CustomElevatedButton(
                    child: Text(
                      "Apply",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: MColors.mgrey, fontWeight: FontWeight.w400),
                    ),
                    color: Colors.black,
                    borderColor: MColors.mgrey,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: CustomElevatedButton(
                    child: Text(
                      "Download",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    color: MColors.mgrey,
                    borderColor: MColors.mgrey,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
