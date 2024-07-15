import 'package:get/get.dart';

class SignUpState{
  int totalSteps = 5;
  RxInt currentStep = 1.obs;
  RxBool closedEye = true.obs;
}