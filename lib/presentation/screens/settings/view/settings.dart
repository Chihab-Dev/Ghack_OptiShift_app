import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings ...',
          style: getlargeStyle(color: ColorManager.dark).copyWith(fontSize: 40),
        ),
      ],
    );
  }
}
