import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/utils/utils.dart';
import 'package:wallpaper/utils/widgets/choice_chip_list.dart';

class CustomDrawer extends StatelessWidget {
  //  CustomDrawer({required Key key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);
  List<String> chipList = [
    'Buildings',
    '3D',
    'Abstract',
    "Luxurious",
    'Nature',
    'Animal',
    'Flower',
    'Food',
    'Car',
    'Airoplane',
    'Architecture',
    'Insects',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.0,
          sigmaY: 1.0,
        ),
        child: Container(
          color: MColors.mblack.withOpacity(.97),
          child: Padding(
            padding: EdgeInsets.only(
                left: 15.w, right: 15.w, top: 20.h, bottom: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Wrap(
                  spacing: 20.w,
                  children: [ChoiceChipList(chipList)],
                ),
                Expanded(
                  child: SizedBox(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElButton(
                        color: MColors.mgrey,
                        onPressed: () {},
                        title: 'Apply',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrwrChip extends StatelessWidget {
  final String title;
  bool isSelected = false;

  DrwrChip({
    // Key? key,
    required this.title,
  })
  // : super(key: key)
  ;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: isSelected,
      onSelected: (bool selected) {
        isSelected = selected;
      },
      visualDensity: const VisualDensity(vertical: -2.0),
      backgroundColor: isSelected
          ? MColors.mblack.withOpacity(0.85)
          : MColors.mblack.withOpacity(.6),
      label: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14.sp),
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: MColors.mgrey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
