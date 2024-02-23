import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:lottie/lottie.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(LottieAsset.canceled),
              SizedBox(height: AppSize.s40.sp),
              Text(
                'Give your feedback',
                style: getlargeStyle(color: ColorManager.dark),
              ),
              SizedBox(height: AppSize.s30.sp),
              Container(
                width: AppSize.s400.sp, // Adjust the width as needed
                height: AppSize.s50.sp, // Adjust the height as needed
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.sp),
                decoration: BoxDecoration(
                  color: ColorManager.grey,
                  borderRadius: BorderRadius.circular(AppSize.s15),
                ),
                child: Center(
                  child: TextField(
                    // obscureText: 'obscure',
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: getMeduimStyle(color: ColorManager.specielGrey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSize.s30.sp),
              Container(
                width: AppSize.s400.sp, // Adjust the width as needed
                height: AppSize.s200.sp, // Adjust the height as needed
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.sp),
                decoration: BoxDecoration(
                  color: ColorManager.grey,
                  borderRadius: BorderRadius.circular(AppSize.s15),
                ),
                child: TextField(
                  // obscureText: 'obscure',
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'description',
                    hintStyle: getMeduimStyle(color: ColorManager.specielGrey),
                  ),
                ),
              ),
              SizedBox(height: AppSize.s30.sp),
              SizedBox(
                width: AppSize.s400.sp,
                height: AppSize.s50.sp,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s15.sp),
                      ),
                    ),
                    child: Text(
                      'Send feedback',
                      style: getRegularStyle(color: ColorManager.white).copyWith(fontSize: 24),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
