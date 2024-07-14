import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final state = WelcomeState();

  @override
  void onReady(){
    super.onReady();
    Future.delayed(
        const Duration(seconds: 2), () => Get.offAllNamed(AppRoutes.splash)
    );
  }
}