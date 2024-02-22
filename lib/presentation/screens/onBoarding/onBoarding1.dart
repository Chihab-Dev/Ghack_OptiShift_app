import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/font_manager.dart';
import 'package:ghack_app/presentation/components/strings_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:ghack_app/presentation/screens/onBoarding/onBoarding2.dart';

class OnBoarding1View extends StatefulWidget {
  const OnBoarding1View({super.key});

  @override
  State<OnBoarding1View> createState() => _OnBoarding1ViewState();
}

class _OnBoarding1ViewState extends State<OnBoarding1View> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) => {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const OnBoarding2View(),
              )),
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAsset.backgroundImage,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(AppPadding.p30.sp),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSize.s200),
                  FadeInLeft(
                    child: Text(
                      AppStrings.welcomeTo,
                      maxLines: 3,
                      style: getVeryLargeStyle(color: ColorManager.white).copyWith(fontSize: FontSize.s48),
                    ),
                  ),
                  FadeInLeft(
                    child: Text(
                      AppStrings.swiftDelivery,
                      maxLines: 3,
                      style: getVeryLargeStyle(color: ColorManager.white),
                    ),
                  ),
                  const SizedBox(height: AppSize.s30),
                  FadeInLeft(
                    child: Text(
                     AppStrings.appDesc,
                      maxLines: 3,
                      style: getRegularStyle(color: ColorManager.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
