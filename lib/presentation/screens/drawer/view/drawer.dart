// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class MenuItems {
  static const orders = MenuItem('Orders', Icons.fire_truck_outlined);
  static const myAccount = MenuItem('My account', Icons.person_outline_sharp);
  static const notification = MenuItem('Notifications', Icons.notifications_none);
  static const settings = MenuItem('Settings', Icons.settings);
  static const contactUs = MenuItem('Contact us', Icons.help_outline);

  static const all = <MenuItem>[
    myAccount,
    notification,
    settings,
    contactUs,
  ];
}

class MenuItem {
  final String title;
  final IconData icon;
  const MenuItem(this.title, this.icon);
}

class DrawerView extends StatelessWidget {
  MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  DrawerView({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
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
                              const SizedBox(height: AppSize.s18),
                              Padding(
                                padding: const EdgeInsets.only(left: AppPadding.p25),
                                child: Text(
                                  'Goat tech',
                                  style: getRegularStyle(color: ColorManager.dark)
                                      .copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s25),
                                ),
                              ),
                              const SizedBox(height: AppSize.s18),
                              menuItemContainer(MenuItems.orders, context),
                              menuItemContainer(MenuItems.myAccount, context),
                              menuItemContainer(MenuItems.notification, context),
                              menuItemContainer(MenuItems.contactUs, context),
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
                      child: FadeInUp(child: customSectionButton('Logout   ', Icons.logout_outlined, context)),
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

  Widget menuItemContainer(MenuItem item, BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectedItem(item);
        ZoomDrawer.of(context)!.close();
      },
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
