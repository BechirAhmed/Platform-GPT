import 'controller/profile_one_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/utils/validation_functions.dart';
import 'package:bgpt/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bgpt/widgets/app_bar/appbar_title.dart';
import 'package:bgpt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bgpt/widgets/app_bar/custom_app_bar.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class ProfileOneScreen extends GetWidget<ProfileOneController> {
  ProfileOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 395.h,
                    child: Column(children: [
                      SizedBox(height: 43.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 8.h, right: 13.h, bottom: 5.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder42),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildDemandeCounter(),
                                        SizedBox(height: 16.v),
                                        _buildVectorRow(),
                                        SizedBox(height: 9.v),
                                        _buildMobileNoEditText(),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, right: 97.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_wilaya2".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallOutfitTeal900),
                                                  Text("lbl_moughataa".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallOutfitTeal900)
                                                ])),
                                        SizedBox(height: 5.v),
                                        _buildNouakchottOuest(),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_documents".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOutfitTeal900)),
                                        SizedBox(height: 8.v),
                                        _buildWeburl()
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_detail_de_la_demande".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(28.h, 17.v, 28.h, 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildEnAttendButton() {
    return CustomElevatedButton(
        height: 18.v,
        width: 65.h,
        text: "lbl_en_attend".tr,
        margin: EdgeInsets.only(top: 3.v, bottom: 6.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgDot,
                height: 8.adaptSize,
                width: 8.adaptSize)),
        buttonTextStyle: CustomTextStyles.labelSmallErrorContainer);
  }

  /// Section Widget
  Widget _buildDemandeCounter() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_demande_01".tr, style: theme.textTheme.titleLarge),
              _buildEnAttendButton()
            ]));
  }

  /// Section Widget
  Widget _buildVectorEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            width: 154.h,
            controller: controller.vectorEditTextController,
            hintText: "lbl_coiffeur".tr,
            hintStyle: CustomTextStyles.labelLargeSmartPrimary,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 12.v, 18.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray30001,
                    height: 8.adaptSize,
                    width: 8.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 33.v),
            borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer));
  }

  /// Section Widget
  Widget _buildVectorRow() {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 17.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRiTimeLine,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("msg_23_12_30_09_2023".tr,
                                      style:
                                          CustomTextStyles.labelLargeTeal900))
                            ])),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("msg_r_f_rence_du_dossier".tr,
                                style:
                                    CustomTextStyles.bodySmallOutfitTeal900)),
                        SizedBox(height: 21.v),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Row(children: [
                              Container(
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  padding: EdgeInsets.all(4.h),
                                  decoration: AppDecoration.fillBluegray90023
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlueGray30001,
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      alignment: Alignment.center)),
                              Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text("lbl_39022".tr,
                                      style: CustomTextStyles.bodySmall12))
                            ])),
                        SizedBox(height: 26.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("msg_nom_de_l_affaire".tr,
                                style:
                                    CustomTextStyles.bodySmallOutfitTeal900)),
                        SizedBox(height: 11.v),
                        _buildVectorEditText(),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("msg_type_de_l_affaire".tr,
                                style:
                                    CustomTextStyles.bodySmallOutfitTeal900)),
                        SizedBox(height: 8.v),
                        Container(
                            width: 154.h,
                            padding: EdgeInsets.symmetric(vertical: 4.v),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 4.v, bottom: 3.v),
                                      padding: EdgeInsets.all(4.h),
                                      decoration: AppDecoration
                                          .fillBluegray90023
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorBlueGray30001,
                                          height: 8.adaptSize,
                                          width: 8.adaptSize,
                                          alignment: Alignment.center)),
                                  Text("msg_activit_commercial".tr,
                                      style: CustomTextStyles
                                          .labelLargeSmartPrimary)
                                ])),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_compte_bancaire2".tr,
                                style: CustomTextStyles.bodySmallOutfitTeal900))
                      ])),
              Padding(
                  padding: EdgeInsets.only(bottom: 196.v),
                  child:
                      QrImageView(data: 'https://www.google.com', size: 115.v))
            ]));
  }

  /// Section Widget
  Widget _buildMobileNoEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            width: 154.h,
            controller: controller.mobileNoEditTextController,
            hintText: "lbl_1234567890".tr,
            hintStyle: CustomTextStyles.labelLargeSmartPrimary,
            textInputType: TextInputType.phone,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 12.v, 18.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray30001,
                    height: 8.adaptSize,
                    width: 8.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 33.v),
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            },
            borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer));
  }

  /// Section Widget
  Widget _buildNouakchottOuestButton() {
    return Expanded(
        child: CustomElevatedButton(
            height: 33.v,
            text: "msg_nouakchott_ouest".tr,
            margin: EdgeInsets.only(right: 22.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 18.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray30001,
                    height: 8.adaptSize,
                    width: 8.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnErrorContainer,
            buttonTextStyle: CustomTextStyles.labelLargeSmartPrimary));
  }

  /// Section Widget
  Widget _buildVectorEditText1() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: CustomTextFormField(
                controller: controller.vectorEditTextController1,
                hintText: "lbl_tevragh_zeine".tr,
                hintStyle: CustomTextStyles.labelLargeSmartPrimary,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 17.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgVectorBlueGray30001,
                        height: 8.adaptSize,
                        width: 8.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 33.v),
                borderDecoration:
                    TextFormFieldStyleHelper.fillOnErrorContainer)));
  }

  /// Section Widget
  Widget _buildNouakchottOuest() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 13.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildNouakchottOuestButton(),
              _buildVectorEditText1()
            ])));
  }

  /// Section Widget
  Widget _buildWeburlEditText() {
    return CustomTextFormField(
        width: 154.h,
        controller: controller.weburlEditTextController,
        hintText: "lbl_snde_pdf".tr,
        hintStyle: CustomTextStyles.labelLargeSmartBluegray300,
        prefix: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
            margin: EdgeInsets.fromLTRB(11.h, 7.v, 16.h, 7.v),
            decoration: BoxDecoration(
                color: appTheme.red300.withOpacity(0.38),
                borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorRed300,
                height: 8.v,
                width: 7.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer);
  }

  /// Section Widget
  Widget _buildWeburlEditText1() {
    return CustomTextFormField(
        width: 154.h,
        controller: controller.weburlEditTextController1,
        hintText: "lbl_cnam_pdf".tr,
        hintStyle: CustomTextStyles.labelLargeSmartBluegray300,
        prefix: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
            margin: EdgeInsets.fromLTRB(11.h, 7.v, 16.h, 7.v),
            decoration: BoxDecoration(
                color: appTheme.red300.withOpacity(0.38),
                borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorRed300,
                height: 8.v,
                width: 7.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer);
  }

  /// Section Widget
  Widget _buildWeburlEditText2() {
    return CustomTextFormField(
        width: 154.h,
        controller: controller.weburlEditTextController2,
        hintText: "lbl_somelec_pdf".tr,
        hintStyle: CustomTextStyles.labelLargeSmartBluegray300,
        prefix: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
            margin: EdgeInsets.fromLTRB(11.h, 7.v, 16.h, 7.v),
            decoration: BoxDecoration(
                color: appTheme.red300.withOpacity(0.38),
                borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorRed300,
                height: 8.v,
                width: 7.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer);
  }

  /// Section Widget
  Widget _buildWeburlEditText3() {
    return CustomTextFormField(
        width: 154.h,
        controller: controller.weburlEditTextController3,
        hintText: "lbl_sejour_pdf".tr,
        hintStyle: CustomTextStyles.labelLargeSmartBluegray300,
        textInputAction: TextInputAction.done,
        prefix: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
            margin: EdgeInsets.fromLTRB(11.h, 7.v, 16.h, 7.v),
            decoration: BoxDecoration(
                color: appTheme.red300.withOpacity(0.38),
                borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorRed300,
                height: 8.v,
                width: 7.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer);
  }

  /// Section Widget
  Widget _buildWeburl() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 17.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 20.h),
                      child: Column(children: [
                        _buildWeburlEditText(),
                        SizedBox(height: 5.v),
                        _buildWeburlEditText1()
                      ]))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Column(children: [
                        _buildWeburlEditText2(),
                        SizedBox(height: 5.v),
                        _buildWeburlEditText3()
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Align(
          alignment: Alignment.centerRight,
          child: SizedBox(width: 159.h, child: Divider(endIndent: 51.h))),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.customBorderBL42),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup1000004634Black900,
                    height: 25.v,
                    width: 341.h),
                SizedBox(height: 6.v),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_profile".tr,
                          style: theme.textTheme.labelMedium),
                      TextSpan(
                          text: "lbl_param_tres2".tr,
                          style: theme.textTheme.labelMedium),
                      TextSpan(text: "         ".tr),
                      TextSpan(text: "       ".tr),
                      TextSpan(
                          text: "lbl_nouveau".tr,
                          style: CustomTextStyles.labelMediumBlack900),
                      TextSpan(text: " "),
                      TextSpan(text: " "),
                      TextSpan(text: "            ".tr),
                      TextSpan(
                          text: "lbl_demandes2".tr,
                          style: CustomTextStyles.labelMediumPrimary),
                      TextSpan(text: "     ".tr),
                      TextSpan(text: "        ".tr),
                      TextSpan(
                          text: "lbl_aide".tr,
                          style: theme.textTheme.labelMedium)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 2.v)
              ]))
    ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
