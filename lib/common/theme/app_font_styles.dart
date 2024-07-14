import 'package:flutter/material.dart';
import 'package:smartpay/common/theme/app_colors.dart';
import 'package:smartpay/common/theme/app_sizes.dart';

class AppFontStyles{
  static const fontFamily = 'SFProDisplay';

  static TextStyle headingOne = TextStyle(
    fontSize: AppSizes.getProportionateScreenSize(size: 48),
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    color: AppColors.appTextColor
  );

  static TextStyle headingTwo = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 40),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.appTextColor
  );

  static TextStyle headingThree = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 32),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.appTextColor
  );

  static TextStyle headingFour = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 24),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 31.2),
      color: AppColors.appTextColor
  );

  static TextStyle headingFive = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 20),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.appTextColor
  );

  static TextStyle headingSix = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.appTextColor
  );

  static TextStyle bodyXLBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 25.2),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXLSemiBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 25.2),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXLMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 25.2),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXLRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 18),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 25.2),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyLargeBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle whiteBodyLargeBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appWhiteColor
  );

  static TextStyle primaryBodyLargeBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appPrimaryColor
  );

  static TextStyle bodyLargeSemiBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodLargeMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyLargeRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle greyBodyLargeRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.greyScale500
  );

  static TextStyle lightGreyBodyLargeRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 16),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 24),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.greyScale400
  );

  static TextStyle bodyMediumBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 21),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyMediumSemiBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 21),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyMediumMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 21),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyMediumRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 21),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyGreyMediumRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 14),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 21),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.greyScale500
  );

  static TextStyle bodySmallBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 18),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodySmallSemiBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 18),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodySmallMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 18),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle greyBodySmallMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 18),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.greyScale500
  );

  static TextStyle bodySmallRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 12),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 18),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXSBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 10),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800,
      // height: AppSizes.getProportionateScreenSize(size: 15),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXSSemiBold = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 10),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      // height: AppSizes.getProportionateScreenSize(size: 15),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXSMedium = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 10),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      // height: AppSizes.getProportionateScreenSize(size: 15),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );

  static TextStyle bodyXSRegular = TextStyle(
      fontSize: AppSizes.getProportionateScreenSize(size: 10),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      // height: AppSizes.getProportionateScreenSize(size: 15),
      letterSpacing: AppSizes.getProportionateScreenSize(size: 0.3),
      color: AppColors.appTextColor
  );
}
