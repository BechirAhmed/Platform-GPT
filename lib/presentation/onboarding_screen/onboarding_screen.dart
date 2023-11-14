import 'controller/onboarding_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 395.h,
          child: SingleChildScrollView(
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(left: 1.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder42,
              ),
              child: Container(
                height: 807.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder42,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 21.h,
                          vertical: 44.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder45,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 334.h,
                              margin: EdgeInsets.only(
                                left: 14.h,
                                right: 2.h,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_plateforme_de".tr,
                                      style:
                                          CustomTextStyles.headlineSmallAlmarai,
                                    ),
                                    TextSpan(
                                      text: "msg_gestion_des_permis".tr,
                                      style: CustomTextStyles
                                          .headlineSmallAlmaraiGreenA70001,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 66.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgPortraitYoung,
                              height: 257.v,
                              width: 325.h,
                            ),
                            SizedBox(height: 60.v),
                            Container(
                              width: 341.h,
                              margin: EdgeInsets.only(left: 9.h),
                              child: Text(
                                "msg_lorem_ipsum_is_simply".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumAlmaraiGray600
                                    .copyWith(
                                  height: 1.69,
                                ),
                              ),
                            ),
                            SizedBox(height: 60.v),
                          ],
                        ),
                      ),
                    ),
                    _buildOnboardingContinueButton(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 8.v,
                        margin: EdgeInsets.only(
                          left: 35.h,
                          bottom: 169.v,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 4,
                          effect: ScrollingDotsEffect(
                            spacing: 12.62,
                            activeDotColor: theme.colorScheme.primaryContainer,
                            dotColor: theme.colorScheme.primaryContainer,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingContinueButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 31.v,
        ),
        decoration: AppDecoration.outlineDeepOrangeF.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL42,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 48.v),
            CustomElevatedButton(
              height: 63.v,
              text: "lbl_continue".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.outlineBlueGray,
              buttonTextStyle: CustomTextStyles.titleLargePoppinsWhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}
