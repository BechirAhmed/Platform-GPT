import 'controller/otp_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:bgpt/widgets/custom_pin_code_text_field.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 397.h,
                child: SingleChildScrollView(
                    child: Container(
                        height: 811.v,
                        width: 396.h,
                        margin: EdgeInsets.only(left: 1.h, bottom: 1.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildOnboardingColumn(),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder42),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildConnectezVousStack(),
                                        SizedBox(height: 2.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 49.h),
                                            child: Text(
                                                "msg_assurez_vous_que2".tr,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900Light10)),
                                        SizedBox(height: 39.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 49.h),
                                            child: Text("lbl_num_tel".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 8.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 40.h, right: 54.h),
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .icbaselinephoneController,
                                                hintText: "lbl_num_tel".tr,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        15.h, 13.v, 7.h, 13.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIcbaselinephone,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 50.v),
                                                contentPadding: EdgeInsets.only(
                                                    top: 13.v,
                                                    right: 30.h,
                                                    bottom: 13.v))),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 49.h),
                                            child: Text("lbl_mot_de_passe".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 17.v),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 40.h, right: 54.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18.h,
                                                vertical: 11.v),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector,
                                                      height: 17.v,
                                                      width: 14.h,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 7.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h, top: 2.v),
                                                      child: Text(
                                                          "lbl_mot_de_passe".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumPoppinsOnPrimaryContainer)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgViewhidefill,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 1.v, right: 8.h))
                                                ])),
                                        SizedBox(height: 33.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 49.h),
                                            child: Text(
                                                "msg_confirmer_le_mot".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        SizedBox(height: 10.v),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 40.h, right: 54.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18.h,
                                                vertical: 11.v),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector,
                                                      height: 17.v,
                                                      width: 14.h,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 7.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h, top: 2.v),
                                                      child: Text(
                                                          "msg_confirmer_mot_de"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumPoppinsOnPrimaryContainer)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgViewhidefill,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 22.h,
                                                          top: 1.v,
                                                          right: 8.h))
                                                ])),
                                        SizedBox(height: 47.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 45.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.v,
                                                                  bottom: 4.v),
                                                          child: Text(
                                                              "lbl_s_inscrire"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleMedium)),
                                                      Container(
                                                          height: 34.v,
                                                          width: 56.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 9.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      19.h,
                                                                  vertical:
                                                                      8.v),
                                                          decoration: AppDecoration
                                                              .gradientPrimaryToOnError
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder17),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowRight,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center))
                                                    ]))),
                                        SizedBox(height: 65.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 19.h),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_vous_avez_un_compte2"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .bodyLarge),
                                                      TextSpan(
                                                          text:
                                                              "lbl_se_connecter"
                                                                  .tr,
                                                          style: CustomTextStyles
                                                              .titleMediumIndigo300)
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 784.v,
                                  width: 396.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 13.h,
                                                    vertical: 55.v),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL25),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCaptureDECran,
                                                    height: 28.v,
                                                    width: 29.h))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 13.h,
                                                    top: 54.v,
                                                    right: 10.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          49.h),
                                                              child: Text(
                                                                  "lbl_otp".tr,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBold16))),
                                                      SizedBox(height: 63.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgUser07b,
                                                          height: 97.v,
                                                          width: 85.h),
                                                      SizedBox(height: 18.v),
                                                      Text(
                                                          "lbl_mohamed_mohamed"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeBlack900_1),
                                                      SizedBox(height: 56.v),
                                                      _buildLeCodeATEnvoyStack(),
                                                      SizedBox(height: 49.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 21.h,
                                                                  right: 12.h),
                                                          child: Obx(() =>
                                                              CustomPinCodeTextField(
                                                                  context: Get
                                                                      .context!,
                                                                  controller:
                                                                      controller
                                                                          .otpController
                                                                          .value,
                                                                  onChanged:
                                                                      (value) {}))),
                                                      SizedBox(height: 20.v),
                                                      RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_renvoyer_le_code2"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeBlack900),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_30_s"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargePrimary)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left),
                                                      SizedBox(height: 46.v),
                                                      CustomElevatedButton(
                                                          text:
                                                              "lbl_verifier".tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 29.h,
                                                                  right: 12.h),
                                                          buttonStyle:
                                                              CustomButtonStyles
                                                                  .fillPrimary,
                                                          onPressed: () {
                                                            onTapVerifier();
                                                          })
                                                    ])))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildOnboardingColumn() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            decoration: AppDecoration.outlineDeepOrangeF
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL42),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 67.v),
              Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 27.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text("msg_bonjour_bienvenu".tr,
                            style: CustomTextStyles
                                .titleLargePoppinsOnErrorContainer),
                        SizedBox(height: 22.v),
                        Container(
                            margin: EdgeInsets.only(left: 8.h),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder25),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 49.h, vertical: 17.v),
                                      decoration: AppDecoration
                                          .fillOnErrorContainer
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder25),
                                      child: Text("lbl_se_connecter2".tr,
                                          style: CustomTextStyles
                                              .labelMediumGreenA70001)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 29.h, top: 17.v, bottom: 19.v),
                                      child: Text("lbl_s_inscrire2".tr,
                                          style: CustomTextStyles
                                              .labelMediumOnErrorContainer))
                                ]))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildConnectezVousStack() {
    return SizedBox(
        height: 231.v,
        width: 395.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 229.v,
                  width: 395.h,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray40001,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(42.h)),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.deepOrange1003f,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 49.h),
                  child: Text("msg_connectez_vous".tr,
                      style: CustomTextStyles.labelMediumBlack900Bold)))
        ]));
  }

  /// Section Widget
  Widget _buildLeCodeATEnvoyStack() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.orange50,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 84.v,
            width: 373.h,
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 19.v),
            decoration: AppDecoration.fillOrange
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      width: 337.h,
                      child: Text("msg_le_code_a_t_envoy".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallYellow800
                              .copyWith(height: 2.40)))),
              CustomImageView(
                  imagePath: ImageConstant.imgCaptureDECran22x13,
                  height: 22.v,
                  width: 13.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 1.v))
            ])));
  }

  /// Navigates to the creationDUneDemandeOneScreen when the action is triggered.
  onTapVerifier() {
    Get.toNamed(
      AppRoutes.creationDUneDemandeOneScreen,
    );
  }
}
