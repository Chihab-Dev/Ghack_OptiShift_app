import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notifications ...',
          style: getlargeStyle(color: ColorManager.dark).copyWith(fontSize: 40),
        ),
      ],
    );
  }
}
