import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    @required this.hint,
    @required this.controller,
    this.inputType,
    this.onSaved,
  }) : super(key: key);

  final String? hint;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final VoidCallback? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black45),
              ),
              // style: kBodyText,
              controller: controller,
              keyboardType: inputType,
            ),
          ),
        ),
      ),
    );
  }
}
