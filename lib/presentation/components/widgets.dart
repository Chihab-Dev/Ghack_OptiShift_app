import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

Widget customElevatodButton(String label, Color backgroundColor, Function()? onPressed) {
  return SizedBox(
    width: AppSize.s200.sp,
    height: AppSize.s50.sp,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s15.sp),
          ),
        ),
        child: Text(
          label,
          style: getRegularStyle(color: ColorManager.dark).copyWith(fontSize: 24),
        )),
  );
}
