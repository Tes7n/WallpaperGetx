import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:wallpaper/controllers/controllers.dart';
import 'package:wallpaper/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  final ImageController controller = Get.find();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.black,
            drawer: CustomDrawer(),
            onDrawerChanged: (value) {
              controller.drawerChanged();
            },
            body: Builder(builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 30.h,
                            color: MColors.mgrey,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 12.w, left: 12.w, top: 10.h),
                            child: TextField(
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: MColors.mlgrey,
                              ),
                              decoration: InputDecoration(
                                hintText: "e.g. Animal",
                                hintStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: MColors.mgrey,
                                ),
                                suffixIcon: const Icon(
                                  Icons.search_outlined,
                                  color: Color(0xff9D9C9C),
                                  size: 25.0,
                                ),
                                isDense: true,
                                filled: true,
                                fillColor:
                                    const Color(0xFF3A3A3A).withOpacity(0.7),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Color(0xff9D9C9C),
                                    width: 1.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              cursorColor: const Color(0xff9D9C9C),
                              cursorHeight: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: Obx(() {
                        if (controller.isLoading.isTrue) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: MColors.mgrey,
                            ),
                          );
                        } else {
                          return StaggeredGridView.countBuilder(
                            crossAxisCount: 2,
                            itemCount: controller.productList.length,
                            itemBuilder: (context, index) => WallpaperCard(
                                imageModel: controller.productList[index]),
                            staggeredTileBuilder: (index) =>
                                const StaggeredTile.fit(1),
                            mainAxisSpacing: 15.h,
                            crossAxisSpacing: 25.w,
                          );
                        }
                      }),
                    ),
                  ],
                ),
              );
            }),
          ),
          Obx(
            () => controller.isDrawerOpen.value
                ? SizedBox(
                    height: 1.h,
                  )
                : const Hero(
                    tag: "navBar",
                    child: NavBar(
                      pageIndex: 0,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
