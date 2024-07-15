import 'package:flutter/material.dart';

class AppColors {
  static const boxShadowColor = [
    BoxShadow(
      color: Color(0xFFD3D4D9),
      spreadRadius: 1,
      blurRadius: 10,
    ),
  ];

  static const appGreyGradientColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFFFFFFF), Color(0xFFE5E7EB)],
  );

  static const appBackgroundColor = Color(0xFFFAFAFA);
  static const appTextColor = Color(0xFF111827);
  static const appGreyTextColor = Color(0xFF727272);
  static const appWhiteColor = Color(0xFFFFFFFF);
  static const appBlackColor = Color(0xFF000000);
  static const appPrimaryColor = Color(0xFF0A6375);
  static const appSecondaryColor = Color(0xFFFFB9AA);
  static const appSuccessColor = Color(0xFF4ADE80);
  static const appWarningColor = Color(0xFFFACC15);
  static const appErrorColor = Color(0xFFF75555);
  static const greyScale900 = Color(0xFF111827);
  static const greyScale800 = Color(0xFF1F2937);
  static const greyScale700 = Color(0xFF374151);
  static const greyScale600 = Color(0xFF4B5563);
  static const greyScale500 = Color(0xFF6B7280);
  static const greyScale400 = Color(0xFF9CA3AF);
  static const greyScale300 = Color(0xFFD1D5DB);
  static const greyScale200 = Color(0xFFE5E7EB);
  static const greyScale100 = Color(0xFFF3F4F6);
  static const greyScale50 = Color(0xFFF9FAFB);
}
