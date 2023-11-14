import 'controller/settigns_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bgpt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bgpt/widgets/app_bar/custom_app_bar.dart';
import 'package:bgpt/widgets/custom_icon_button.dart';
import 'package:bgpt/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SettignsScreen extends GetWidget<SettignsController> {
  const SettignsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: 395.h,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 27.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 23.h, right: 23.h, bottom: 5.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder42),
                                  child: Column(children: [
                                    _buildMonCompte(),
                                    SizedBox(height: 54.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Opacity(
                                            opacity: 0.8,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.h),
                                                child: Text("lbl_more".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallDMSansGray900)))),
                                    SizedBox(height: 27.v),
                                    _buildNotification1()
                                  ]))))
                    ])),
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(28.h, 17.v, 28.h, 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildMonCompte() {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 40.v,
                    width: 276.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup12135,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 5.h)),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGroup12334)),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, top: 2.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Text(
                                                      "lbl_mon_compte".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeDMSansGray900)),
                                              SizedBox(height: 5.v),
                                              Text(
                                                  "msg_apporter_des_modifications"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodySmallDMSansGray50001)
                                            ])))
                              ]))
                    ])),
                CustomImageView(
                    imagePath: ImageConstant.imgIconLightMonth,
                    height: 11.v,
                    width: 6.h,
                    margin:
                        EdgeInsets.only(left: 28.h, top: 14.v, bottom: 14.v))
              ]),
              SizedBox(height: 25.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup12334)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_saved_beneficiary".tr,
                              style: CustomTextStyles.labelLargeDMSansGray900),
                          SizedBox(height: 5.v),
                          Text("msg_manage_your_saved".tr,
                              style: CustomTextStyles.bodySmallDMSansGray50001)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgIconLightMonth,
                    height: 11.v,
                    width: 6.h,
                    margin: EdgeInsets.symmetric(vertical: 14.v))
              ]),
              SizedBox(height: 25.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup12334Primary)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_face_id_touch".tr,
                              style: CustomTextStyles.labelLargeDMSansGray900),
                          SizedBox(height: 6.v),
                          Text("msg_g_rez_la_s_curit".tr,
                              style: CustomTextStyles.bodySmallDMSansGray50001)
                        ])),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v),
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    }))
              ]),
              SizedBox(height: 25.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup12334Primary40x40)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_authentification".tr,
                                  style:
                                      CustomTextStyles.labelLargeDMSansGray900),
                              SizedBox(height: 6.v),
                              Text("msg_s_curisez_votre".tr,
                                  style:
                                      CustomTextStyles.bodySmallDMSansGray50001)
                            ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgIconLightMonth,
                    height: 11.v,
                    width: 6.h,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 14.v))
              ]),
              SizedBox(height: 25.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconlyTwoToneLogout)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, top: 12.v, bottom: 10.v),
                        child: Text("lbl_log_out".tr,
                            style: CustomTextStyles.labelLargeDMSansGray700))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildNotification1() {
    return Container(
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildOffer(proposdelapplication: "lbl_support_d_aide".tr),
          SizedBox(height: 25.v),
          _buildOffer(proposdelapplication: "msg_propos_de_l_application".tr)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(width: 161.h, child: Divider(indent: 53.h)),
          Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBL42),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup100000463425x341,
                        height: 25.v,
                        width: 341.h,
                        alignment: Alignment.center),
                    SizedBox(height: 6.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_profile3".tr,
                              style: CustomTextStyles.labelMediumBlack900),
                          TextSpan(text: "           ".tr),
                          TextSpan(
                              text: "lbl".tr,
                              style: theme.textTheme.labelMedium),
                          TextSpan(
                              text: "lbl_param_tres4".tr,
                              style: CustomTextStyles.labelMediumPrimary),
                          TextSpan(text: "        ".tr),
                          TextSpan(
                              text: "lbl2".tr,
                              style: theme.textTheme.labelMedium),
                          TextSpan(
                              text: "lbl_nouveau".tr,
                              style: CustomTextStyles.labelMediumBlack900),
                          TextSpan(text: " "),
                          TextSpan(text: " "),
                          TextSpan(text: "               ".tr),
                          TextSpan(
                              text: "lbl_demandes".tr,
                              style: theme.textTheme.labelMedium),
                          TextSpan(text: "      ".tr),
                          TextSpan(
                              text: "lbl_aide".tr,
                              style: theme.textTheme.labelMedium)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 2.v)
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildOffer({required String proposdelapplication}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillOnPrimary,
          child: CustomImageView(imagePath: ImageConstant.imgOffer)),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 12.v),
          child: Text(proposdelapplication,
              style: CustomTextStyles.labelLargeDMSansGray900
                  .copyWith(color: appTheme.gray900))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgIconLightMonth,
          height: 11.v,
          width: 6.h,
          margin: EdgeInsets.only(top: 14.v, bottom: 12.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
