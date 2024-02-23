import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/client_screens/drawer/view/drawer.dart';
import 'package:ghack_app/presentation/client_screens/main/view/main.dart';

class ZoomDrawerView extends StatefulWidget {
  const ZoomDrawerView({super.key});

  @override
  State<ZoomDrawerView> createState() => _ZoomDrawerViewState();
}

class _ZoomDrawerViewState extends State<ZoomDrawerView> {
  MenuItem currentItem = MenuItems.orders;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: MainView(
        item: currentItem,
      ),
      menuScreen: DrawerView(
        currentItem: currentItem,
        onSelectedItem: (item) {
          setState(() => currentItem = item);
        },
      ),
      menuScreenWidth: double.infinity,
      menuBackgroundColor: ColorManager.white,
      angle: 0.0,
      borderRadius: 30,
      mainScreenScale: 0.15,
      mainScreenTapClose: true,
      slideHeight: 35,
      slideWidth: 335,
    );
  }
}
