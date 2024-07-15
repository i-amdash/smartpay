

import 'package:flutter/material.dart';
import 'package:smartpay/common/theme/app_font_styles.dart';
import 'package:smartpay/common/theme/index.dart';
import 'package:smartpay/common/utils/utils.dart';

class CustomTextField {
  static Widget textBox(
      TextEditingController controller,
      String label,
      TextInputType textInputType,
      String formType,
      ){
    return Container(
      height: AppSizes.getProportionateScreenSize(size: 56),
      width: AppSizes.getProportionateScreenSize(size: 327),
      decoration: BoxDecoration(
        color: AppColors.greyScale50,
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16)))
      ),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
          hintText: label,
          hintStyle: AppFontStyles.lightGreyBodyLargeRegular,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16))),
            borderSide: BorderSide(
              color: AppColors.appPrimaryColor,
              width: AppSizes.getProportionateScreenSize(size: 1),
            )
          )
        ),
          validator: (value)=>FormHelpers.customValidation(formType,value)
      ),
    );
  }
}