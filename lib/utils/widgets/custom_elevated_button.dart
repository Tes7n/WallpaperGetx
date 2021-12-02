import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomElevatedButton({
    this.child,
    this.color = Colors.white,
    this.borderRadius = 10.0,
    this.height = 50.0,
    this.onPressed,
  });
  final Widget? child;
  final Color? color;
  final double borderRadius;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          onSurface: color!.withOpacity(0.90), //disabled color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
