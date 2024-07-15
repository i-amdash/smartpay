import 'package:smartpay/common/theme/app_colors.dart';
import 'package:smartpay/common/theme/app_font_styles.dart';
import 'package:smartpay/common/theme/app_sizes.dart';
import 'package:smartpay/common/utils/utils.dart';
import 'package:smartpay/common/widgets/widgets.dart';
import 'package:smartpay/pages/frame/forgot/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPage extends GetView<ForgotController> {
  ForgotPage({super.key});

  final _forgotFormOne = GlobalKey<FormState>();
  final _forgotFormTwo = GlobalKey<FormState>();

  bool validateAndSaveOne() {
    final form = _forgotFormOne.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  bool validateAndSaveTwo() {
    final form = _forgotFormTwo.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => Padding(
          padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
          child: controller.state.currentStep.value == 1 ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/lock.png", width: AppSizes.getProportionateScreenSize(size: 90), height: AppSizes.getProportionateScreenSize(size: 76),),
              AppSizes.appHeightBox(size: 30),
              Text("Passsword Recovery", style: AppFontStyles.headingFour,),
              AppSizes.appHeightBox(size: 10),
              SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 327),
                  child: Text("Enter your registered email below to receive password instructions",
                    style: AppFontStyles.greyBodyLargeRegular,
                    textAlign: TextAlign.left,
                  )),
              AppSizes.appHeightBox(size: 30),
              Form(
                  key: _forgotFormOne,
                  child: CustomTextField.textBox(controller.emailController, 'Email', TextInputType.emailAddress, 'email')),
              AppSizes.appHeightBox(size: 60),
              AppButtons.fillButton(context, 'Send a mail', () {
                if(validateAndSaveOne()){
                  controller.nextStep();
                } else {
                  toastInfo(msg: "Enter a valid Email");
                }
              })
            ],
          ) :
          controller.state.currentStep.value == 2 ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/user.png", width: AppSizes.getProportionateScreenSize(size: 90), height: AppSizes.getProportionateScreenSize(size: 76),),
              AppSizes.appHeightBox(size: 30),
              Text("Verify your identity", style: AppFontStyles.headingFour,),
              AppSizes.appHeightBox(size: 10),
              SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 327),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Where would you like ",
                            style: AppFontStyles.greyBodyLargeRegular,
                          ),
                          TextSpan(
                            text: "Smartpay ",
                            style: AppFontStyles.primaryBodyLargeBold,
                          ),
                          TextSpan(
                            text: "to send your security code?",
                            style: AppFontStyles.greyBodyLargeRegular,
                          )
                        ]
                    ),
                  )),
              AppSizes.appHeightBox(size:40),
              Container(
                height: AppSizes.getProportionateScreenSize(size: 88),
                width: AppSizes.getProportionateScreenSize(size: 327),
                padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
                decoration: BoxDecoration(
                    color: AppColors.greyScale50,
                    borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16)))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: AppSizes.getProportionateScreenSize(size: 143),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, size: AppSizes.getProportionateScreenSize(size: 20), color: AppColors.appPrimaryColor,),
                            AppSizes.appWidthBox(size: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email', style: AppFontStyles.bodyLargeBold,),
                                AppSizes.appHeightBox(size: 5),
                                Text('A******@mail.com', style: AppFontStyles.greyBodySmallMedium,)
                              ],
                            ),
                          ],
                        )),
                    Image.asset(
                      "assets/images/mail.png",
                      width: AppSizes.getProportionateScreenSize(size: 18),
                      height: AppSizes.getProportionateScreenSize(size: 14),
                    )
                  ],
                ),
              ),
              const Spacer(),
              AppButtons.fillButton(context, 'Continue', () {
                controller.nextStep();
              })
            ],
          ) : Form(
            key: _forgotFormTwo,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppButtons.backButton(context),
                AppSizes.appHeightBox(size: 30),
                Text("Create New Password", style: AppFontStyles.headingFour,),
                AppSizes.appHeightBox(size: 10),
                SizedBox(
                    width: AppSizes.getProportionateScreenSize(size: 327),
                    child: Text("Please, enter a new password below different from the previous password",
                      style: AppFontStyles.greyBodyLargeRegular,
                      textAlign: TextAlign.left,
                    )),
                AppSizes.appHeightBox(size: 30),
                _buildPasswordInput(),
                AppSizes.appHeightBox(size: 10),
                _buildConfirmPasswordInput(),
                AppSizes.appHeightBox(size: 60),
                AppButtons.fillButton(context, 'Create new password', () {
                  if(controller.passwordController.text == controller.confirmPasswordController.text) {
                    if(validateAndSaveTwo()){
                      controller.nextStep();
                    } else {
                      toastInfo(msg: "Enter a valid password, must be 6 digits long");
                    }
                  } else {
                    toastInfo(msg: "Passwords don't match");
                  }
                })
              ],
            ),
          ),
        ))
      )
    );
  }

  Widget _buildPasswordInput(){
    return Container(
        height: AppSizes.getProportionateScreenSize(size: 56),
        width: AppSizes.getProportionateScreenSize(size: 327),
        decoration: BoxDecoration(
            color: AppColors.greyScale50,
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16)))
        ),
        child: Obx(() => TextFormField(
            keyboardType: TextInputType.text,
            controller: controller.passwordController,
            obscureText: controller.state.closedEye.value,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
              hintText: 'Password',
              hintStyle: AppFontStyles.lightGreyBodyLargeRegular,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16))),
                  borderSide: BorderSide(
                    color: AppColors.appPrimaryColor,
                    width: AppSizes.getProportionateScreenSize(size: 1),
                  )
              ),
              suffixIcon: IconButton(
                  icon: controller.state.closedEye.value
                      ? Image.asset("assets/icons/closedEye.png", width: AppSizes.getProportionateScreenSize(size: 24),)
                      : Image.asset("assets/icons/eye.png", width: AppSizes.getProportionateScreenSize(size: 24),),
                  onPressed: (){
                    controller.togglePasswordText();
                  }
              ),
            ),

            validator: (value)=>FormHelpers.customValidation('password',value)
        ))
    );
  }

  Widget _buildConfirmPasswordInput(){
    return Container(
        height: AppSizes.getProportionateScreenSize(size: 56),
        width: AppSizes.getProportionateScreenSize(size: 327),
        decoration: BoxDecoration(
            color: AppColors.greyScale50,
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16)))
        ),
        child: Obx(() => TextFormField(
            keyboardType: TextInputType.text,
            controller: controller.confirmPasswordController,
            obscureText: controller.state.closedConfirmEye.value,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
              hintText: 'Confirm Password',
              hintStyle: AppFontStyles.lightGreyBodyLargeRegular,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16))),
                  borderSide: BorderSide(
                    color: AppColors.appPrimaryColor,
                    width: AppSizes.getProportionateScreenSize(size: 1),
                  )
              ),
              suffixIcon: IconButton(
                  icon: controller.state.closedConfirmEye.value
                      ? Image.asset("assets/icons/closedEye.png", width: AppSizes.getProportionateScreenSize(size: 24),)
                      : Image.asset("assets/icons/eye.png", width: AppSizes.getProportionateScreenSize(size: 24),),
                  onPressed: (){
                    controller.toggleConfirmPasswordText();
                  }
              ),
            ),

            validator: (value)=>FormHelpers.customValidation('password',value)
        ))
    );
  }
}
