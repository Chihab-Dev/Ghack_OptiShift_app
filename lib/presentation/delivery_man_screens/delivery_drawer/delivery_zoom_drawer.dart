import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/delivery_man_screens/delivery_drawer/delivery_drawer.dart';
import 'package:ghack_app/presentation/delivery_man_screens/delivery_main/delivery_main.dart';

class DeliveryZoomDrawer extends StatefulWidget {
  const DeliveryZoomDrawer({super.key});

  @override
  State<DeliveryZoomDrawer> createState() => _DeliveryZoomDrawerState();
}

class _DeliveryZoomDrawerState extends State<DeliveryZoomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: const DeliveryMainView(),
      menuScreen: const DeliveryDrawerView(),
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
