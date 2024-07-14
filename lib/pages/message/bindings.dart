import 'package:smartpay/pages/message/controller.dart';
import 'package:get/get.dart';

class MessageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MessageController>(() => MessageController());
  }

}