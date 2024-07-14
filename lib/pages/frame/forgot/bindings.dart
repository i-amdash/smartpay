import 'package:smartpay/pages/frame/forgot/controller.dart';
import 'package:get/get.dart';

class ForgotBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ForgotController>(() => ForgotController());
  }

}