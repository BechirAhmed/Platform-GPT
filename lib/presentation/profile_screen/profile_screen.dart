import 'controller/profile_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.h, vertical: 4.v),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder42),
                        child: Column(children: [
                          _buildArrowLeftSection(),
                          SizedBox(height: 50.v),
                          _buildSixtySevenSection(),
                          SizedBox(height: 24.v),
                          _buildSixtyEightSection(),
                          SizedBox(height: 24.v),
                          _buildSixtyNineSection(),
                          SizedBox(height: 24.v)
                        ])))),
            bottomNavigationBar: _buildBottomBarSection()));
  }

  /// Section Widget
  Widget _buildArrowLeftSection() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 151.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      onTap: () {
                        onTapBtnArrowLeft();
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft))),
              Padding(
                  padding: EdgeInsets.only(left: 21.h, top: 5.v),
                  child: Column(children: [
                    SizedBox(
                        height: 134.v,
                        width: 137.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle6,
                              height: 120.adaptSize,
                              width: 120.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 1.h, top: 3.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSubtract,
                              height: 125.v,
                              width: 122.h,
                              radius: BorderRadius.circular(61.h),
                              alignment: Alignment.topLeft),
                          CustomIconButton(
                              height: 46.adaptSize,
                              width: 46.adaptSize,
                              padding: EdgeInsets.all(11.h),
                              decoration:
                                  IconButtonStyleHelper.outlineOnErrorContainer,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgLineDesignEditLine))
                        ])),
                    SizedBox(height: 1.v),
                    Text("lbl_mohamed_mohamed".tr,
                        style: CustomTextStyles.titleLargePoppins),
                    Text("msg_908342081_36367789".tr,
                        style: theme.textTheme.bodyMedium)
                  ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 20.v,
                  width: 16.h,
                  margin: EdgeInsets.only(top: 13.v, bottom: 157.v))
            ]));
  }

  /// Section Widget
  Widget _buildSixtySevenSection() {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLineBusinessProfileLine,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 13.h, top: 3.v, bottom: 3.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_date_de_naissance2".tr,
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "lbl_22_06_1967".tr,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary_1)
                                ]),
                                textAlign: TextAlign.left))
                      ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen()),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen())
            ]));
  }

  /// Section Widget
  Widget _buildSixtyEightSection() {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 11.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineBusinessP,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 13.h, top: 4.v, bottom: 2.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_num_ro_du_passeport2".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_2031as2891".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1)
                            ]),
                            textAlign: TextAlign.left))
                  ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen())
            ]));
  }

  /// Section Widget
  Widget _buildSixtyNineSection() {
    return Container(
        width: 342.h,
        margin: EdgeInsets.only(left: 4.h, right: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineUserContactsLine,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 13.h, top: 4.v, bottom: 2.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_lieu_de_sejour".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_toujounin".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1)
                            ]),
                            textAlign: TextAlign.left))
                  ])),
              SizedBox(height: 11.v),
              SizedBox(
                  height: 24.v,
                  width: 296.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineCommunicat,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerLeft),
                    Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_fonction".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_plombier".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1)
                            ]),
                            textAlign: TextAlign.left)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLineCommunicat,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 13.h, top: 3.v, bottom: 3.v),
                              child: Text("lbl_fonction2".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]))
                  ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 44.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineSystemLock2Line,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 13.h, top: 3.v, bottom: 3.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_lieu_de_travail".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_tvz".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1)
                            ]),
                            textAlign: TextAlign.left))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
    return SizedBox(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(width: 108.h, child: Divider()),
          Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBL42),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath:
                            ImageConstant.imgGroup1000004634Black90025x341,
                        height: 25.v,
                        width: 341.h),
                    SizedBox(height: 6.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_profile2".tr,
                              style: CustomTextStyles.labelMediumPrimary),
                          TextSpan(
                              text: "lbl_param_tres3".tr,
                              style: theme.textTheme.labelMedium),
                          TextSpan(text: "         ".tr),
                          TextSpan(text: "    ".tr),
                          TextSpan(
                              text: "lbl_nouveau".tr,
                              style: CustomTextStyles.labelMediumBlack900),
                          TextSpan(text: " "),
                          TextSpan(text: " "),
                          TextSpan(text: "             ".tr),
                          TextSpan(
                              text: "lbl_demandes".tr,
                              style: theme.textTheme.labelMedium),
                          TextSpan(text: "          ".tr),
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
  Widget _buildComponentThirteen() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgLineEditorTranslate2,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 3.v),
          child: Text("lbl_nationalit".tr, style: theme.textTheme.bodyMedium)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
          child: Text("lbl_s_n_galais".tr,
              style: CustomTextStyles.bodyMediumPrimary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
