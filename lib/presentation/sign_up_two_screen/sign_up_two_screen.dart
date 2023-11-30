import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:bgpt/widgets/custom_pin_code_text_field.dart';

import 'controller/sign_up_two_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_drop_down.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SignUpTwoScreen extends GetWidget<SignUpTwoController> {
  const SignUpTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Container(
          height: mediaQueryData.size.height,
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                          top: 25.v,
                          left: 40.h,
                          right: 40.h,
                          bottom: 43.v,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup8727,
                                    height: 166.v,
                                    width: 143.h,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_cr_er_un_nouveau".tr,
                                      style: CustomTextStyles
                                          .titleMediumBold)),
                              SizedBox(height: 1.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_assurez_vous_que".tr,
                                      style: CustomTextStyles
                                          .bodySmallBlack900Light10)),
                              SizedBox(height: 14.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text("lbl_date_d_entr_e".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 15.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapOne();
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h,
                                          vertical: 13.v),
                                      decoration: AppDecoration
                                          .outlineBlack9001
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder25),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCalendar,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 7.h,
                                                    top: 5.v,
                                                    bottom: 3.v),
                                                child: Obx(() => Text(
                                                    controller
                                                        .signUpTwoModelObj
                                                        .value
                                                        .dateDEntrE
                                                        .value,
                                                    style: controller
                                                        .signUpTwoModelObj
                                                        .value
                                                        .dateDEntrE
                                                        .value != "Date d’entrée" ? CustomTextStyles
                                                        .bodyLargeBlack900_1 : CustomTextStyles
                                                        .bodySmallBlack90010
                                                )))
                                          ]))),
                              SizedBox(height: 11.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text("lbl_lieu_d_entr_e".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 8.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowdown,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText: "lbl_lieu_d_entr_e".tr,
                                  hintStyle: CustomTextStyles
                                      .bodySmallBlack90010,
                                  items: controller.signUpTwoModelObj
                                      .value.dropdownItemList.value,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.h, 13.v, 7.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJumptime,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 50.v),
                                  borderDecoration:
                                      DropDownStyleHelper
                                          .outlineBlack,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text("msg_point_de_passage".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 6.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowdown,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText:
                                      "msg_choisir_votre_point".tr,
                                  hintStyle: CustomTextStyles
                                      .bodySmallBlack90010,
                                  items: controller.signUpTwoModelObj
                                      .value.dropdownItemList1.value,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 13.v, 6.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgJumptime,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 50.v),
                                  borderDecoration:
                                      DropDownStyleHelper
                                          .outlineBlack,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  }),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text("lbl_nationalite".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 9.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowdown,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText:
                                  "msg_choisir_votre_nationalite".tr,
                                  hintStyle: CustomTextStyles
                                      .bodySmallBlack90010,
                                  items: controller.signUpTwoModelObj
                                      .value.dropdownItemList2.value,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 13.v, 6.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgProfile,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  prefixConstraints:
                                  BoxConstraints(maxHeight: 50.v),
                                  borderDecoration:
                                  DropDownStyleHelper
                                      .outlineBlack,
                                  onChanged: (value) {
                                    controller.onSelected2(value);
                                  }
                              ),
                              SizedBox(height: 34.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 2.v,
                                                bottom: 4.v),
                                            child: Text(
                                                "lbl_s_inscrire".tr,
                                                style: theme.textTheme
                                                    .titleMedium)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapThree(context);
                                            },
                                            child: Container(
                                                height: 38.v,
                                                width: 56.h,
                                                margin: EdgeInsets.only(
                                                    left: 15.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 19.h,
                                                    vertical: 8.v),
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
                                                            .center)))
                                      ])),
                              // SizedBox(height: 33.v),
                              // Align(
                              //     alignment: Alignment.centerRight,
                              //     child: RichText(
                              //         text: TextSpan(children: [
                              //           TextSpan(
                              //               text:
                              //                   "msg_vous_avez_un_compte2"
                              //                       .tr,
                              //               style: theme
                              //                   .textTheme.bodyLarge),
                              //           TextSpan(
                              //               text: "lbl_se_connecter".tr,
                              //               style: CustomTextStyles
                              //                   .titleMediumIndigo300)
                              //         ]),
                              //         textAlign: TextAlign.left))
                            ]))))
          ]),
        ));
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [signUpTwoModelObj] object of the current [dateDEntrE] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapOne() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.signUpTwoModelObj.value.selectedDateDEntrE!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.signUpTwoModelObj.value.selectedDateDEntrE!.value = dateTime;
      controller.signUpTwoModelObj.value.dateDEntrE.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapThree(BuildContext context) {
    showCupertinoModalBottomSheet(
      expand: false,
      context: context,
      backgroundColor: Colors.white,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => Material(
        child: Container(
          height: 784.v,
          width: double.infinity,
          child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 784.v,
                  width: 396.h,
                  child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 13.h,
                                    top: 34.v,
                                    right: 10.h),
                                child: Column(
                                    mainAxisSize:
                                    MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment
                                              .centerLeft,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.arrow_back, color: Colors.black),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets
                                                      .only(
                                                      left:
                                                      19.h),
                                                  child: Text(
                                                      "lbl_otp".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBold16)),
                                            ],
                                          )),
                                      SizedBox(height: 43.v),
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
                      ]))),
        ),
      ),
    );
    // Get.toNamed(
    //   AppRoutes.otpScreen,
    // );
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
            height: 74.v,
            width: 373.h,
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 15.v),
            decoration: AppDecoration.fillOrange
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      width: 337.h,
                      child: Text("msg_le_code_a_t_envoy".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallYellow800
                              .copyWith(height: 1.7)))),
              CustomImageView(
                  imagePath: ImageConstant.imgCaptureDECran22x13,
                  height: 22.v,
                  width: 13.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 1.v))
            ])));
  }

  onTapVerifier() async {
      await controller.updateUser();
      Get.toNamed(
          AppRoutes.mainClassScreen
      );
  }
}
