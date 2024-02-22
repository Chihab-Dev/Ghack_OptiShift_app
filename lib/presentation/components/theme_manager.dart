import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorManager.yellow,
  );
}
