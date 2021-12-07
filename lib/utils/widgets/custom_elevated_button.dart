import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomElevatedButton({
    this.child,
    this.color = Colors.white,
    this.borderColor = Colors.black,
    this.borderRadius = 10.0,
    // this.height = 70.0,
    this.onPressed,
  });
  final Widget? child;
  final Color? color;
  final Color? borderColor;
  final double borderRadius;
  // final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(color: borderColor!)),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
