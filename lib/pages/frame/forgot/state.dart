import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ForgotState{
  int totalSteps = 3;
  RxInt currentStep = 1.obs;
  RxBool closedEye = true.obs;
  RxBool closedConfirmEye = true.obs;
}