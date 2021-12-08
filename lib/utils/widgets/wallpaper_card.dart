import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/models/image_model.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';

class WallpaperCard extends StatelessWidget {
  const WallpaperCard({required this.imageModel});

  final ImageModel imageModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => WallpaperScreen(
              imageModel: imageModel,
            ));
      },
      child: Hero(
        tag: imageModel.id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(imageModel.urls.regular, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
