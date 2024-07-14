import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/common/theme/index.dart';
import 'package:smartpay/common/widgets/widgets.dart';
import 'package:smartpay/pages/frame/sign_in/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppButtons.backButton(context),
              AppSizes.appHeightBox(size: 30),
              Text('Hi There! 👋', style: AppFontStyles.headingFour,),
              AppSizes.appHeightBox(size: 10),
              Text('Welcome back, Sign in to your account', style: AppFontStyles.greyBodyLargeRegular,),
              AppSizes.appHeightBox(size: 30),
              CustomTextField.textBox(controller.emailController, 'Email'),
              AppSizes.appHeightBox(size: 10),
              CustomTextField.textBox(controller.passwordController, 'Password'),
              AppSizes.appHeightBox(size: 30),
              TextButton(onPressed: ()=> Get.toNamed(AppRoutes.forgot), child: Text('Forgot Password?', style: AppFontStyles.primaryBodyLargeBold,)),
              AppSizes.appHeightBox(size: 20),
              AppButtons.fillButton(context, 'Sign In', (){}),
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
                    Text("Don't have an account? ", style: AppFontStyles.greyBodyLargeRegular,),
                    GestureDetector(
                        onTap: ()=> Get.toNamed(AppRoutes.register),
                        child: Text('Sign Up', style: AppFontStyles.primaryBodyLargeBold,))
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
