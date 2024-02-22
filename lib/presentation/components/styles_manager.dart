import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    overflow: TextOverflow.ellipsis,
  );
}

// small style
TextStyle getSmallStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// Meduim Style
TextStyle getMeduimStyle({
  double fontSize = FontSize.s15,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// large style
TextStyle getRegularStyle({
  double fontSize = FontSize.s20,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getlargeStyle({
  double fontSize = FontSize.s35,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getVeryLargeStyle({
  double fontSize = FontSize.s73,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
