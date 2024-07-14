

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartpay/common/theme/index.dart';

class AppButtons {
  static Widget fillButton(BuildContext context, String text, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppSizes.getProportionateScreenSize(size: 327),
        height: AppSizes.getProportionateScreenSize(size: 56),
        decoration: BoxDecoration(
          color: AppColors.appTextColor,
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16)))
        ),
        child: Center(child: Text(text, style: AppFontStyles.whiteBodyLargeBold,)),
      ),
    );
  }

  static Widget backButton(BuildContext context) {
    return GestureDetector(
      onTap: () =>  Get.back(),
      child: Container(
        width: AppSizes.getProportionateScreenSize(size: 40),
        height: AppSizes.getProportionateScreenSize(size: 40),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.greyScale200,
              width: AppSizes.getProportionateScreenSize(size: 1)
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 12)))
        ),
        child: Center(child: Icon(Icons.chevron_left, size: AppSizes.getProportionateScreenSize(size: 24), color: AppColors.appBlackColor,)),
      ),
    );
  }
}