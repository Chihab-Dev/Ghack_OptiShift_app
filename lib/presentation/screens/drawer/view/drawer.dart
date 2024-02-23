import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SizedBox(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(
              children: [
                FadeInDown(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      ImageAsset.ellipse,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: AppPadding.p30),
                        child: FadeInLeft(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(ImageAsset.picture),
                              const SizedBox(height: AppSize.s18),
                              Text(
                                'Goat tech',
                                style: getRegularStyle(color: ColorManager.dark)
                                    .copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s25),
                              ),
                              const SizedBox(height: AppSize.s18),
                              customSectionButton('My account   ', Icons.person_outline_sharp),
                              customSectionButton('Notifications', Icons.notifications_none),
                              customSectionButton('Contact us   ', Icons.help_outline),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    FadeInRight(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          ImageAsset.rectangleYellow,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: AppSize.s115),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: AppPadding.p35),
                      child: FadeInUp(child: customSectionButton('Logout   ', Icons.logout_outlined)),
                    ),
                    const Spacer(),
                    FadeInRight(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          ImageAsset.rectangleGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InkWell customSectionButton(String label, IconData icon) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          children: [
            Icon(
              icon,
              size: AppSize.s35,
            ),
            const SizedBox(width: AppSize.s10),
            Text(
              label,
              style: getRegularStyle(color: ColorManager.dark).copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
