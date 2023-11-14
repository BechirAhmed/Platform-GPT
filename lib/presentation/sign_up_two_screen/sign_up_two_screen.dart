import 'controller/sign_up_two_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_drop_down.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpTwoScreen extends GetWidget<SignUpTwoController> {
  const SignUpTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 397.h,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 32.h, right: 15.h, bottom: 59.v),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder42),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup8727,
                                        height: 166.v,
                                        width: 143.h,
                                        margin: EdgeInsets.only(left: 89.h)),
                                    SizedBox(height: 13.v),
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
                                            margin:
                                                EdgeInsets.only(right: 50.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.h,
                                                vertical: 13.v),
                                            decoration: AppDecoration
                                                .outlineBlack
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
                                                          style: CustomTextStyles
                                                              .bodySmallBlack900)))
                                                ]))),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("lbl_lieu_d_entr_e".tr,
                                            style: theme.textTheme.labelLarge)),
                                    SizedBox(height: 8.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 50.h),
                                        child: CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 16.v, 19.h, 10.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            hintText: "lbl_lieu_d_entr_e".tr,
                                            hintStyle: CustomTextStyles
                                                .bodySmallBlack900,
                                            items: controller.signUpTwoModelObj
                                                .value.dropdownItemList!.value,
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
                                            })),
                                    SizedBox(height: 24.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("msg_point_de_passage".tr,
                                            style: theme.textTheme.labelLarge)),
                                    SizedBox(height: 6.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 50.h),
                                        child: CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 13.v, 19.h, 13.v),
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
                                                .value.dropdownItemList1!.value,
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
                                            })),
                                    SizedBox(height: 24.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("lbl_nationalite".tr,
                                            style: theme.textTheme.labelLarge)),
                                    SizedBox(height: 9.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 50.h),
                                        child: CustomTextFormField(
                                            controller:
                                                controller.profileController,
                                            hintText:
                                                "msg_choisir_votre_nationalite"
                                                    .tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    15.h, 11.v, 17.h, 15.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgProfile,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 50.v),
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 14.v, 19.h, 12.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgExpanddown,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 50.v),
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 17.v))),
                                    SizedBox(height: 34.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 13.h),
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
                                                        onTapThree();
                                                      },
                                                      child: Container(
                                                          height: 34.v,
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
                                                ]))),
                                    SizedBox(height: 33.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_vous_avez_un_compte2"
                                                          .tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              TextSpan(
                                                  text: "lbl_se_connecter".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumIndigo300)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))))
                ]))));
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
  onTapThree() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
