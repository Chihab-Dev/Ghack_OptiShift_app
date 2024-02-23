import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/core/services/services_locator.dart';
import 'package:ghack_app/core/services/shared_prefrences.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/strings_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:ghack_app/presentation/components/widgets.dart';
import 'package:ghack_app/presentation/client_screens/auth/screens/auth_screen.dart';

class OnBoarding2View extends StatelessWidget {
  const OnBoarding2View({super.key});

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
            padding: EdgeInsets.all(AppPadding.p25.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInDown(
                  child: Image.asset(
                    ImageAsset.onBoarding,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: AppSize.s50),
                FadeInRight(
                  child: Text(
                    AppStrings.letsYouIn,
                    style: getlargeStyle(color: ColorManager.dark),
                  ),
                ),
                const SizedBox(height: AppSize.s30),
                FadeInLeft(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                    child: Text(
                      AppStrings.appDesc2,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: getMeduimStyle(color: ColorManager.dark),
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s30),
                FadeInRight(
                  child: customElevatedButton(AppStrings.login, ColorManager.grey, ColorManager.dark, () {
                    AppPrefernces(getIt()).setUserWatchOnBoarding();
                    Navigator.pushReplacement(
                        context,
                        // CustomPageTransition(
                        //   widget: const AuthScreen(),
                        // ),
                        MaterialPageRoute(
                          builder: (context) => const AuthScreen(),
                        ));
                  }),
                ),
                const SizedBox(height: AppSize.s20),
                FadeInLeft(
                  child: customElevatedButton(AppStrings.signin, ColorManager.green, ColorManager.white, () {}),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
