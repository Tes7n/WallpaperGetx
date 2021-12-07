import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/utils/themes/m_colors.dart';

class ElButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPressed;
  const ElButton(
      {Key? key,
      required this.color,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: MColors.mblack, fontSize: 12.sp),
      ),
    );
  }
}
