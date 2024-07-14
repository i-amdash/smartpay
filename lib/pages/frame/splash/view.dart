import 'package:smartpay/common/routes/routes.dart';
import 'package:smartpay/common/theme/app_font_styles.dart';
import 'package:smartpay/common/theme/app_sizes.dart';
import 'package:smartpay/common/theme/index.dart';
import 'package:smartpay/common/widgets/button.dart';
import 'package:smartpay/pages/frame/splash/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appWhiteColor,
        body: SafeArea(
            child: Obx(
          () => controller.state.currentStep.value == 1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () => Get.offAllNamed(AppRoutes.signIn),
                            child: Text(
                              'Skip',
                              style: AppFontStyles.primaryBodyLargeBold,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: AppSizes.getProportionateScreenSize(size: 660),
                          width: AppSizes.getProportionateScreenSize(size: 375),
                        ),
                        Positioned(
                          top: AppSizes.getProportionateScreenSize(size: 85),
                          left: AppSizes.getProportionateScreenSize(size: 66),
                          child: Center(
                            child: Image.asset(
                              "assets/images/splash1-1.png",
                              height: AppSizes.getProportionateScreenSize(size: 407.26),
                              width: AppSizes.getProportionateScreenSize(size: 202.68),
                            ),
                          ),
                        ),
                        Positioned(
                          top: AppSizes.getProportionateScreenSize(size: 128),
                          left: AppSizes.getProportionateScreenSize(size: 59),
                          child: Center(
                            child: Image.asset(
                              "assets/images/splash1-2.png",
                              height: AppSizes.getProportionateScreenSize(size: 68),
                              width: AppSizes.getProportionateScreenSize(size: 68),
                            ),
                          ),
                        ),
                        Positioned(
                          top: AppSizes.getProportionateScreenSize(size: 227),
                          left: AppSizes.getProportionateScreenSize(size: 148),
                          child: Center(
                            child: Image.asset(
                              "assets/images/splash1-3.png",
                              height: AppSizes.getProportionateScreenSize(size: 97),
                              width: AppSizes.getProportionateScreenSize(size: 160),
                            ),
                          ),
                        ),
                        Positioned(
                          top: AppSizes.getProportionateScreenSize(size: 274),
                          left: AppSizes.getProportionateScreenSize(size: 32),
                          child: Center(
                            child: Image.asset(
                              "assets/images/splash1-4.png",
                              height: AppSizes.getProportionateScreenSize(size: 71),
                              width: AppSizes.getProportionateScreenSize(size: 162),
                            ),
                          ),
                        ),
                        Positioned(
                          top: AppSizes.getProportionateScreenSize(size: 325),
                          child:  Container(
                            padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 15)),
                            decoration: BoxDecoration(
                              color: AppColors.appWhiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.appWhiteColor,
                                      offset: Offset(2, 2),
                                      blurRadius: 20,
                                      spreadRadius: 20
                                  )
                                ]
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: AppSizes.getProportionateScreenSize(size: 287),
                                  child: Text(
                                    'Finance app the safest and most trusted',
                                    style: AppFontStyles.headingFour,
                                    textAlign: TextAlign.center,
                                  )),
                              AppSizes.appHeightBox(size: 20),
                              SizedBox(
                                width: AppSizes.getProportionateScreenSize(size: 287),
                                child: Text(
                                  'Your finance work starts here. Our here to help you track and deal with speeding up your transactions.',
                                  style: AppFontStyles.bodyGreyMediumRegular,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              AppSizes.appHeightBox(size: 30),
                              Row(
                                children: [
                                  Container(
                                    width: AppSizes.getProportionateScreenSize(size: 32),
                                    height: AppSizes.getProportionateScreenSize(size: 6),
                                    decoration: BoxDecoration(
                                        color: AppColors.appTextColor,
                                        borderRadius: BorderRadius.all(Radius.circular(
                                            AppSizes.getProportionateScreenSize(
                                                size: 30)))),
                                  ),
                                  AppSizes.appWidthBox(size: 2),
                                  Container(
                                    width: AppSizes.getProportionateScreenSize(size: 6),
                                    height: AppSizes.getProportionateScreenSize(size: 6),
                                    decoration: BoxDecoration(
                                        color: AppColors.greyScale200,
                                        borderRadius: BorderRadius.all(Radius.circular(
                                            AppSizes.getProportionateScreenSize(
                                                size: 30)))),
                                  ),
                                ],
                              ),
                              AppSizes.appHeightBox(size: 30),
                              AppButtons.fillButton(context, 'Next', ()=> controller.nextStep())
                            ],
                          ),
                        ),)
                      ],
                    ),
                   
                    
                  ],
                )
              : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => Get.offAllNamed(AppRoutes.signIn),
                      child: Text(
                        'Skip',
                        style: AppFontStyles.primaryBodyLargeBold,
                      )),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: AppSizes.getProportionateScreenSize(size: 660),
                    width: AppSizes.getProportionateScreenSize(size: 375),
                  ),
                  Positioned(
                    top: AppSizes.getProportionateScreenSize(size: 85),
                    left: AppSizes.getProportionateScreenSize(size: 66),
                    child: Center(
                      child: Image.asset(
                        "assets/images/splash2-1.png",
                        height: AppSizes.getProportionateScreenSize(size: 407.26),
                        width: AppSizes.getProportionateScreenSize(size: 202.68),
                      ),
                    ),
                  ),
                  Positioned(
                    top: AppSizes.getProportionateScreenSize(size: 168),
                    left: AppSizes.getProportionateScreenSize(size: 34),
                    child: Center(
                      child: Image.asset(
                        "assets/images/splash2-2.png",
                        height: AppSizes.getProportionateScreenSize(size: 119),
                        width: AppSizes.getProportionateScreenSize(size: 158),
                      ),
                    ),
                  ),
                  Positioned(
                    top: AppSizes.getProportionateScreenSize(size: 247),
                    left: AppSizes.getProportionateScreenSize(size: 148),

                    child: Center(
                      child: Image.asset(
                        "assets/images/splash2-3.png",
                        height: AppSizes.getProportionateScreenSize(size: 111),
                        width: AppSizes.getProportionateScreenSize(size: 160),
                      ),
                    ),
                  ),
                  Positioned(
                    top: AppSizes.getProportionateScreenSize(size: 325),
                    child:  Container(
                      padding: EdgeInsets.all(AppSizes.getProportionateScreenSize(size: 15)),
                      decoration: BoxDecoration(
                          color: AppColors.appWhiteColor,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.appWhiteColor,
                              offset: Offset(2, 2),
                              blurRadius: 80,
                              spreadRadius: 20
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: AppSizes.getProportionateScreenSize(size: 287),
                              child: Text(
                                'The fastest transaction process only here',
                                style: AppFontStyles.headingFour,
                                textAlign: TextAlign.center,
                              )),
                          AppSizes.appHeightBox(size: 20),
                          SizedBox(
                            width: AppSizes.getProportionateScreenSize(size: 287),
                            child: Text(
                              'Get easy to pay all your bills with just a few steps. Paying your bills become fast and efficient.',
                              style: AppFontStyles.bodyGreyMediumRegular,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          AppSizes.appHeightBox(size: 30),
                          Row(
                            children: [
                              Container(
                                width: AppSizes.getProportionateScreenSize(size: 6),
                                height: AppSizes.getProportionateScreenSize(size: 6),
                                decoration: BoxDecoration(
                                    color: AppColors.greyScale200,
                                    borderRadius: BorderRadius.all(Radius.circular(
                                        AppSizes.getProportionateScreenSize(
                                            size: 30)))),
                              ),
                              AppSizes.appWidthBox(size: 2),
                              Container(
                                width: AppSizes.getProportionateScreenSize(size: 32),
                                height: AppSizes.getProportionateScreenSize(size: 6),
                                decoration: BoxDecoration(
                                    color: AppColors.appTextColor,
                                    borderRadius: BorderRadius.all(Radius.circular(
                                        AppSizes.getProportionateScreenSize(
                                            size: 30)))),
                              ),


                            ],
                          ),
                          AppSizes.appHeightBox(size: 30),
                          AppButtons.fillButton(context, 'Get Started', ()=> controller.nextStep())
                        ],
                      ),
                    ),)
                ],
              ),
            ],
          )
        )));
  }
}
