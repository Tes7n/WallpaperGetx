import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';

class WallpaperCard extends StatelessWidget {
  WallpaperCard({required this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => WallpaperScreen(imageData: imageData));
      },
      child: Hero(
        tag: imageData.imageUrl,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
