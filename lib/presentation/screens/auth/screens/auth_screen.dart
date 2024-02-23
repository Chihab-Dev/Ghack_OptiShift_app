import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/core/services/services_locator.dart';
import 'package:ghack_app/core/services/shared_prefrences.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/page_transition.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:ghack_app/presentation/components/widgets.dart';
import 'package:ghack_app/presentation/screens/drawer/view/drawer.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              ImageAsset.login,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 350.sp,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: ColorManager.whiteYellow,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.all(AppPadding.p50.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInLeft(
                    child: Text(
                      "Welcome back!",
                      style: getlargeStyle(color: ColorManager.red).copyWith(fontSize: 40),
                    ),
                  ),
                  FadeInRight(
                    child: Text(
                      "Good to see you again",
                      style: getRegularStyle(color: ColorManager.specielGrey),
                    ),
                  ),
                  const SizedBox(height: AppSize.s50),
                  FadeInLeft(child: customTextField("Email", false)),
                  const SizedBox(height: AppSize.s20),
                  FadeInRight(child: customTextField("Password", true)), // Spacer
                  const SizedBox(height: AppSize.s50), // Spacer
                  FadeInLeft(
                      child: customElevatedButton("Login", ColorManager.green, ColorManager.white, () {
                    AppPrefernces(getIt()).setUserLoggedIn();
                    Navigator.pushAndRemoveUntil(
                      context,
                      CustomPageTransition(widget: const DrawerView()),
                      (route) => false,
                    );
                  })),
                  const SizedBox(height: AppSize.s20), // Spacer
                  FadeInUp(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: getRegularStyle(color: ColorManager.lightDark),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
