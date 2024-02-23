import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Orders',
          style: getlargeStyle(color: ColorManager.dark).copyWith(fontSize: 40),
        ),
        Text(
          '8 orders found',
          style: getMeduimStyle(color: ColorManager.darkGrey),
        ),
      ],
    );
  }
}
