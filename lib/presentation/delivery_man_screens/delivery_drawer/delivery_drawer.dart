// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeliveryMenuItems {
  static const orders = DeliveryMenuItem('Orders', Icons.fire_truck_outlined);
  static const map = DeliveryMenuItem('Map', Icons.map_outlined);
  static const myAccount = DeliveryMenuItem('My account', Icons.person_outline_sharp);
  static const notification = DeliveryMenuItem('Notifications', Icons.notifications_none);
  static const settings = DeliveryMenuItem('Settings', Icons.settings);
}

class DeliveryMenuItem {
  final String title;
  final IconData icon;
  const DeliveryMenuItem(this.title, this.icon);
}

class DeliveryDrawerView extends StatelessWidget {
  const DeliveryDrawerView({
    Key? key,
  }) : super(key: key);

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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(ImageAsset.picture),
                              const SizedBox(height: AppSize.s20),
                              Padding(
                                padding: const EdgeInsets.only(left: AppPadding.p25),
                                child: Text(
                                  'Goat tech',
                                  style: getRegularStyle(color: ColorManager.dark)
                                      .copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s25),
                                ),
                              ),
                              const SizedBox(height: AppSize.s30),
                              menuItemContainer(DeliveryMenuItems.orders, null, context),
                              menuItemContainer(DeliveryMenuItems.map, () async {
                                String googleUrl = "https://www.google.com/maps/search/?api=1&query=37.7749,-122.4194";

                                print(googleUrl);

                                await canLaunchUrlString(googleUrl)
                                    ? await launchUrlString(googleUrl)
                                    : throw "can't launch URL $googleUrl";
                              }, context),
                              menuItemContainer(DeliveryMenuItems.myAccount, null, context),
                              menuItemContainer(DeliveryMenuItems.notification, null, context),
                              menuItemContainer(DeliveryMenuItems.settings, null, context),
                              customSectionButton('Contact us', Icons.help_outline, context),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        ImageAsset.rectangleYellow,
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
                      child: customSectionButton('Logout   ', Icons.logout_outlined, context),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        ImageAsset.rectangleGrey,
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

  Widget menuItemContainer(DeliveryMenuItem item, Function()? onTap, BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              item.icon,
              size: AppSize.s35,
            ),
            const SizedBox(width: AppSize.s10),
            Text(
              item.title,
              style: getRegularStyle(color: ColorManager.dark).copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

InkWell customSectionButton(String label, IconData icon, BuildContext context) {
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
