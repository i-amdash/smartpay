
import 'package:smartpay/pages/frame/forgot/index.dart';
import 'package:smartpay/pages/frame/sign_in/index.dart';
import 'package:smartpay/pages/frame/sign_up/index.dart';
import 'package:smartpay/pages/frame/splash/index.dart';
import 'package:smartpay/pages/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),

    GetPage(
      name: AppRoutes.forgot,
      page: () => ForgotPage(),
      binding: ForgotBinding(),
    ),

    GetPage(
      name: AppRoutes.register,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
  ];






}
