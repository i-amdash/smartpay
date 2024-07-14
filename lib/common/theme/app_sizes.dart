import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes{
  static Widget appHeightBox({required double size}){
    return SizedBox(height: size.h);
  }
  static Widget appWidthBox({required double size}){
    return SizedBox(width: size.w);
  }
  static appFontSize({required double size}){
    return size.sp;
  }
  static getProportionateScreenSize({required double size}){
    return size.sp;
  }
}