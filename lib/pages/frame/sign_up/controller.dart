
import 'package:flutter/cupertino.dart';
import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/common/utils/http.dart';
import 'package:smartpay/pages/frame/sign_up/index.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  SignUpController();
  final state = SignUpState();
  TextEditingController emailController =  TextEditingController();
  TextEditingController codeController =  TextEditingController();
  TextEditingController fullNameController =  TextEditingController();
  TextEditingController userNameController =  TextEditingController();
  TextEditingController countryController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();
  TextEditingController pinController =  TextEditingController();

  void nextStep(){
    if(state.currentStep.value < state.totalSteps){
      state.currentStep.value++;
    } else {
      Get.toNamed(AppRoutes.home);
    }
  }

  void togglePasswordText(){
    state.closedEye.value = !state.closedEye.value;
  }

  Future<void> getEmailToken() async{
    var form = {
      "email": emailController.text.toString()
    };
    // var response = await HttpUtil.post("https://smart-pay-mobile.herokuapp.com/api/v1/auth/email", queryParameters: form);
  }

  @override
  void onReady() {
    super.onReady();
  }
}