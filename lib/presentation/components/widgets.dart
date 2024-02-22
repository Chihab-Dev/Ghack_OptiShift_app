import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

Widget customElevatedButton(String label, Color backgroundColor, Color textColor, Function()? onPressed) {
  return SizedBox(
    width: AppSize.s310.sp,
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
          style: getRegularStyle(color: textColor).copyWith(fontSize: 24),
        )),
  );
}

Widget customTextField(String hint, [bool obscure = false]) {
  return Container(
    width: AppSize.s310.sp, // Adjust the width as needed
    height: AppSize.s50.sp, // Adjust the height as needed
    padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.sp),
    decoration: BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.circular(AppSize.s15),
    ),
    child: Center(
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: getMeduimStyle(color: ColorManager.specielGrey),
        ),
      ),
    ),
  );
}
