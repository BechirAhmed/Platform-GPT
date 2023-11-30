import 'controller/onboarding_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:onboarding/onboarding.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    final onboardingPagesList = [
      PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
            color: appTheme.blueGray400,
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                height: mediaQueryData.size.height - 175.v,
                padding: EdgeInsets.only(
                  top: 80.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    boxShadow: []
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                      height: 287.v,
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
          ),
        ),
      ),
      PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
            color: appTheme.blueGray400,
          ),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                height: mediaQueryData.size.height - 175.v,
                padding: EdgeInsets.only(
                  top: 80.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    boxShadow: []
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                      height: 287.v,
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
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: appTheme.blueGray400,
      body: SingleChildScrollView(
        child: GetBuilder<OnboardingController>(
          builder: (tx) {
            return Container(
              height: mediaQueryData.size.height,
              margin: EdgeInsets.zero,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Onboarding(
                    pages: onboardingPagesList,
                    onPageChange: (int pageIndex) {
                      tx.onScreenChanged(pageIndex);
                      print(controller.index);
                    },
                    startPageIndex: 0,
                    // footerBuilder: (context, dragDistance, pagesLength, setIndex) {
                    //   return DecoratedBox(
                    //     decoration: BoxDecoration(
                    //       color: background,
                    //       border: Border.all(
                    //         width: 0.0,
                    //         color: Colors.transparent,
                    //       ),
                    //     ),
                    //     child: ColoredBox(
                    //       color: Colors.black,
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(45.0),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             CustomIndicator(
                    //               netDragPercent: dragDistance,
                    //               pagesLength: pagesLength,
                    //               indicator: Indicator(
                    //                 indicatorDesign: IndicatorDesign.polygon(
                    //                   polygonDesign: PolygonDesign(
                    //                     polygon: DesignType.polygon_circle,
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   );
                    // },
                  ),
                  _buildOnboardingContinueButton(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 8.v,
                      margin: EdgeInsets.only(
                        left: 25.h,
                        bottom: 220.v,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.index,
                        count: onboardingPagesList.length,
                        effect: ScrollingDotsEffect(
                          spacing: 12.62,
                          activeDotColor: Colors.black,
                          dotColor: Colors.green,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
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
          vertical: 49.v,
        ),
        decoration: AppDecoration.outlineDeepOrangeF.copyWith(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 48.v),
            CustomElevatedButton(
              height: 63.v,
              text: "lbl_continue".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.outlineBlueGray,
              buttonTextStyle: CustomTextStyles.titleLargePoppinsWhiteA700,
              onPressed: () {
                Get.toNamed(
                  AppRoutes.signUpScreen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
