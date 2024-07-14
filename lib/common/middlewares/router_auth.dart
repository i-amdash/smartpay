import 'package:flutter/material.dart';
import 'package:smartpay/common/routes/routes.dart';
import 'package:smartpay/common/store/store.dart';

import 'package:get/get.dart';

/// 检查是否登录
class RouteAuthMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin || route == AppRoutes.signIn || route == AppRoutes.initial
    // || route == AppRoutes.Message
    ) {
      return null;
    } else {
      Future.delayed(
          const Duration(seconds: 2), () => Get.snackbar("Tips", "Login expired, please login again!"));
      return const RouteSettings(name: AppRoutes.signIn);
    }
  }
}
