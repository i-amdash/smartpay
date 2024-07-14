import 'package:smartpay/common/theme/app_sizes.dart';
import 'package:smartpay/pages/frame/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(controller.state.logo,
          width: AppSizes.getProportionateScreenSize(size: 148),
          height: AppSizes.getProportionateScreenSize(size: 130),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
