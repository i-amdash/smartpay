import 'package:flutter/cupertino.dart';
import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/pages/frame/forgot/state.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  ForgotController();
  final state = ForgotState();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void nextStep(){
    if(state.currentStep.value < state.totalSteps){
      state.currentStep.value++;
    } else {
      Get.toNamed(AppRoutes.signIn);
    }
  }

  @override
  void onReady(){
    super.onReady();
  }
}