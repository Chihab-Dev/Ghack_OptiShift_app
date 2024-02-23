import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';
import 'package:ghack_app/presentation/client_screens/drawer/view/drawer.dart';
import 'package:ghack_app/presentation/client_screens/my_account/view/my_acount.dart';
import 'package:ghack_app/presentation/client_screens/notifications/view/notifications.dart';
import 'package:ghack_app/presentation/client_screens/orders/view/orders.dart';
import 'package:ghack_app/presentation/client_screens/settings/view/settings.dart';

class MainView extends StatelessWidget {
  final MenuItem item;
  const MainView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0.0,
        centerTitle: true,
        title: FadeInDown(
          child: Text(
            item.title,
            style: getRegularStyle(color: ColorManager.dark).copyWith(fontSize: AppSize.s25),
          ),
        ),
        leading: FadeInLeft(
          child: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
            icon: SizedBox(
              width: AppSize.s25,
              height: AppSize.s25,
              child: Image.asset(
                ImageAsset.menu,
              ),
            ),
          ),
        ),
        actions: [
          FadeInRight(
            child: SizedBox(
              width: AppSize.s40,
              height: AppSize.s40,
              child: Image.asset(
                ImageAsset.picture,
              ),
            ),
          ),
          const SizedBox(width: AppPadding.p14),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14, vertical: AppPadding.p6),
        child: item == MenuItems.orders
            ? const OrdersView()
            : item == MenuItems.myAccount
                ? const MyAccountView()
                : item == MenuItems.notification
                    ? const NotificationsView()
                    : item == MenuItems.settings
                        ? const SettingsView()
                        : const Center(
                            child: Text('No Screen'),
                          ),
      ),
    );
  }
}
