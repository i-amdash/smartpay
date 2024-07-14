import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/pages/frame/splash/state.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  final state = SplashState();

  void nextStep(){
    if(state.currentStep.value < state.totalSteps) {
      state.currentStep++;
    } else {
      Get.offAllNamed(AppRoutes.signIn);
    }
  }

}