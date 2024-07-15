import 'package:flutter/cupertino.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:smartpay/common/routes/routes.dart';
import 'package:smartpay/common/theme/index.dart';
import 'package:smartpay/common/utils/utils.dart';
import 'package:smartpay/common/widgets/widgets.dart';
import 'package:smartpay/pages/frame/sign_up/controller.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController> {
  SignUpPage({super.key});

  final _signUpFormOne = GlobalKey<FormState>();
  final _signUpFormTwo = GlobalKey<FormState>();
  final _signUpFormThree = GlobalKey<FormState>();
  final _signUpFormFour = GlobalKey<FormState>();

  bool validateAndSaveOne() {
    final form = _signUpFormOne.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  bool validateAndSaveTwo() {
    final form = _signUpFormTwo.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
  bool validateAndSaveThree() {
    final form = _signUpFormThree.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  bool validateAndSaveFour() {
    final form = _signUpFormFour.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Widget _buildOrWidget(){
    return Row(
      children: [
        SizedBox(
            width: AppSizes.getProportionateScreenSize(size: 142),
            child: Divider(
              color: AppColors.greyScale200,
            )),
        AppSizes.appWidthBox(size:10),
        Text('OR', style: AppFontStyles.bodyGreyMediumRegular,),
        AppSizes.appWidthBox(size:10),

        SizedBox(
            width: AppSizes.getProportionateScreenSize(size: 142),
            child: Divider(
              color: AppColors.greyScale200,
            )),
      ],
    );
  }

  Widget _buildThirdPartyLogIn(String image){
    return Container(
      height: AppSizes.getProportionateScreenSize(size: 56),
      width: AppSizes.getProportionateScreenSize(size: 155),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 16))),
          border: Border.all(
              color: AppColors.greyScale200,
              width: AppSizes.getProportionateScreenSize(size: 1)
          )
      ),
      child: Center(
        child: Image.asset(
          image,
          width: AppSizes.getProportionateScreenSize(size: 24),
          height: AppSizes.getProportionateScreenSize(size: 24),
        ),
      ),
    );
  }

  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 32;
  String email="";
  final TextEditingController _verifyPinTextController = TextEditingController();

  String pin = '';
  bool isLoading = false;
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: const Color(0xFFF6F7F9),
      border: Border.all(color: AppColors.appPrimaryColor),
      borderRadius: BorderRadius.circular(AppSizes.getProportionateScreenSize(size: 12)),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    this.pin = pin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => Padding(
          padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
          child: controller.state.currentStep.value == 1 ?
          Form(
            key: _signUpFormOne,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppButtons.backButton(context),
                AppSizes.appHeightBox(size: 30),
                SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 240),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Create a ',
                              style: AppFontStyles.headingFour,
                            ),
                            TextSpan(
                              text: 'SmartPay ',
                              style: AppFontStyles.primaryHeadingFour,
                            ),
                            TextSpan(
                              text: 'account',
                              style: AppFontStyles.headingFour,
                            ),
                          ]
                      )
                  ),
                ),
                AppSizes.appHeightBox(size: 30),
                CustomTextField.textBox(controller.emailController, 'Email', TextInputType.emailAddress, 'email'),
                AppSizes.appHeightBox(size: 30),
                AppButtons.fillButton(context, 'Sign Up', (){
                  if(validateAndSaveOne()){
                    controller.nextStep();
                  } else {
                    toastInfo(msg: "Enter a valid Email");
                  }
                }),
                AppSizes.appHeightBox(size: 30),
                _buildOrWidget(),
                AppSizes.appHeightBox(size: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildThirdPartyLogIn("assets/images/google.png"),
                    _buildThirdPartyLogIn("assets/images/apple.png")
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ", style: AppFontStyles.greyBodyLargeRegular,),
                      GestureDetector(
                          onTap: ()=> Get.toNamed(AppRoutes.signIn),
                          child: Text('Sign In', style: AppFontStyles.primaryBodyLargeBold,))
                    ],
                  ),
                ),
              ],
            ),
          )
              :
          controller.state.currentStep.value == 2 ?
          Form(
            key: _signUpFormTwo,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppButtons.backButton(context),
                AppSizes.appHeightBox(size: 30),
                Text("Verify it's you", style: AppFontStyles.headingFour,),
                AppSizes.appHeightBox(size: 10),
                SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 327),
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "We sent a code to ( ",
                        style: AppFontStyles.greyBodyLargeRegular
                      ),
                      TextSpan(
                        text: "*****@mail.com ",
                        style: AppFontStyles.bodyLargeMedium
                      ),
                      TextSpan(
                        text: "). Enter it here to verify your identity",
                        style: AppFontStyles.greyBodyLargeRegular
                      )
                    ]
                  )),
                ),
                AppSizes.appHeightBox(size: 30),
                PinPut(
                  keyboardType: TextInputType.number,
                  fieldsCount: 5,
                  autofocus: true,
                  enabled: true,
                  withCursor: true,
                    validator: (value)=>FormHelpers.customValidation('pin',value),
                  eachFieldHeight: AppSizes.getProportionateScreenSize(size: 56),
                  textStyle: AppFontStyles.headingFour,
                  eachFieldWidth: AppSizes.getProportionateScreenSize(size: 56),
                  onSubmit: (String pin) => _showSnackBar(pin, context),
                  focusNode: _pinPutFocusNode,
                  controller: controller.codeController,
                  submittedFieldDecoration: BoxDecoration(
                      color: AppColors.greyScale50,
                      borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 12))),
                      border: Border.all(
                          color: Colors.transparent
                      )
                  ),
                  selectedFieldDecoration: _pinPutDecoration,
                  followingFieldDecoration: BoxDecoration(
                    color: AppColors.greyScale50,
                    borderRadius: BorderRadius.all(Radius.circular(AppSizes.getProportionateScreenSize(size: 12))),
                    border: Border.all(
                      color: Colors.transparent
                    )
                  )
                ),
                AppSizes.appHeightBox(size: 20),
                Center(
                  child: CountdownTimer(
                    endTime: endTime,
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time == null) {
                        return TextButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Resent code',
                              style: AppFontStyles.greyBodyLargeBold,
                              textAlign: TextAlign.center,
                            ));
                      }
                      return Text(
                        'Resend code ${time.min??""}${time.sec} secs',
                        style: AppFontStyles.greyBodyLargeBold,
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                ),
                AppSizes.appHeightBox(size: 50),
                AppButtons.fillButton(context, 'Confirm', (){
                  if (controller.codeController.text
                      .isNotEmpty && controller.codeController.text.length > 4) {
                    if(validateAndSaveTwo()){
                      controller.nextStep();
                    } else {
                      toastInfo(msg: 'Enter the correct code');
                    }
                  } else {
                    return;
                  }
                }),
              ],
            ),
          )
              :
          controller.state.currentStep.value == 3 ?
          Form(
            key: _signUpFormThree,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppButtons.backButton(context),
                AppSizes.appHeightBox(size: 30),
                SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 240),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hey there! tell us a bit about ',
                              style: AppFontStyles.headingFour,
                            ),
                            TextSpan(
                              text: 'yourself',
                              style: AppFontStyles.primaryHeadingFour,
                            )
                          ]
                      )
                  ),
                ),
                AppSizes.appHeightBox(size: 30),
                CustomTextField.textBox(controller.fullNameController, 'Full name', TextInputType.text, 'name'),
                AppSizes.appHeightBox(size: 15),
                CustomTextField.textBox(controller.userNameController, 'Username', TextInputType.text, 'name'),
                AppSizes.appHeightBox(size: 15),
                CustomTextField.textBox(controller.countryController, 'Select country', TextInputType.text, 'name'),
                AppSizes.appHeightBox(size: 15),
                _buildPasswordInput(),
                AppSizes.appHeightBox(size: 30),
                AppButtons.fillButton(context, 'Continue', (){
                  if(validateAndSaveThree()){
                    controller.nextStep();
                  } else {
                    toastInfo(msg: 'Enter the correct information');
                  }
                }),
              ],
            ),
          )
              :
              controller.state.currentStep.value == 4 ?
          Form(
            key: _signUpFormFour,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppButtons.backButton(context),
                AppSizes.appHeightBox(size: 30),
                Text("Set your PIN code", style: AppFontStyles.headingFour,),
                AppSizes.appHeightBox(size: 10),
                SizedBox(
                  width: AppSizes.getProportionateScreenSize(size: 327),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: "We use state-of-the-art security measures to protect your information at all times",
                            style: AppFontStyles.greyBodyLargeRegular
                        ),
                      ]
                  )),
                ),
                AppSizes.appHeightBox(size: 30),
                PinPut(
                    keyboardType: TextInputType.number,
                    fieldsCount: 5,
                    autofocus: true,
                    enabled: true,
                    withCursor: true,
                    obscureText: "⚫",
                    eachFieldHeight: AppSizes.getProportionateScreenSize(size: 56),
                    textStyle: AppFontStyles.headingFour,
                    eachFieldWidth: AppSizes.getProportionateScreenSize(size: 56),
                    onSubmit: (String pin) => _showSnackBar(pin, context),
                    focusNode: _pinPutFocusNode,
                    controller: controller.pinController,
                    validator: (value)=>FormHelpers.customValidation('pin',value),
                    submittedFieldDecoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.appPrimaryColor,
                                width: AppSizes.getProportionateScreenSize(size: 1)
                            )
                        )
                    ),
                    selectedFieldDecoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: AppColors.appPrimaryColor,
                              width: AppSizes.getProportionateScreenSize(size: 1)
                            )
                        )
                    ),
                    followingFieldDecoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.appPrimaryColor,
                                width: AppSizes.getProportionateScreenSize(size: 1)
                            )
                        )
                    )
                ),
                AppSizes.appHeightBox(size: 50),
                AppButtons.fillButton(context, 'Create Pin', (){
                  if (controller.pinController.text
                      .isNotEmpty && controller.pinController.text.length > 4) {
                    if(validateAndSaveFour()){
                      controller.nextStep();
                    } else {
                      toastInfo(msg: 'Enter a valid pin');
                    }
                  } else {
                    toastInfo(msg: 'Enter a valid pin');
                  }
                }),
              ],
            ),
          ) :
                  Center(
                    child: SizedBox(
                      width: AppSizes.getProportionateScreenSize(size: 327),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/home.png",
                            width: AppSizes.getProportionateScreenSize(size: 140),
                            height: AppSizes.getProportionateScreenSize(size: 134),
                          ),
                          AppSizes.appHeightBox(size: 30),
                          Text("Congratulations, James", style: AppFontStyles.headingFour, textAlign: TextAlign.center,),
                          AppSizes.appHeightBox(size: 10),
                          SizedBox(
                              width: AppSizes.getProportionateScreenSize(size: 260),
                              child: Text("You’ve completed the onboarding, you can start using", style: AppFontStyles.greyBodyLargeRegular, textAlign: TextAlign.center,)),
                          AppSizes.appHeightBox(size: 30),
                          AppButtons.fillButton(context, 'Get Started', () {
                            controller.nextStep();
                          })
                        ],
                      ),
                    ),
                  )
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
}
