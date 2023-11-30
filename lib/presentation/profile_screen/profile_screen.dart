import 'package:get_storage/get_storage.dart';

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
            body: GetBuilder<ProfileController>(
              builder: (px) {
                return SizedBox(
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
                            ]))));
              },
            )
        ));
  }

  /// Section Widget
  Widget _buildArrowLeftSection() {

    return GetBuilder<ProfileController>(
      builder: (context) {
        return Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 151.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          onTap: () {
                            // onTapBtnArrowLeft();
                          },
                          child: Icon(Icons.logout)
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Column(
                          children: [
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
                        Text("${controller.userData?['full_name']}",
                            style: CustomTextStyles.titleLargePoppins),
                        Text("${controller.user?.numero_phone}",
                            style: theme.textTheme.bodyMedium)
                      ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 20.v,
                      width: 16.h,
                      margin: EdgeInsets.only(top: 13.v, bottom: 157.v))
                ]));
      }
    );
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
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineBusinessProfileLine,
                      "msg_date_de_naissance2",
                      "${controller.userData?['birthdate']}"
                  )
              ),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                    ImageConstant.imgLineCommunicat,
                    "Genre",
                    "${controller.userData?['sex']}"
                  )
              ),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                    ImageConstant.imgLineEditorTranslate2,
                    "lbl_nationalit",
                    "${controller.userData?['nationality']}"
                  )
              )
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
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineBusinessP,
                      "msg_num_ro_du_passeport2",
                      "${controller.userData?['passport']}"
                  )
              ),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineEditorTranslate2,
                      "Lieu de delivrance",
                    "${controller.userData?['passport_delivrance']}"
                  )
              )
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
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineUserContactsLine,
                      "lbl_lieu_de_sejour",
                      "lbl_toujounin"
                  )
              ),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineCommunicat,
                      "lbl_fonction",
                      "lbl_plombier"
                  )
              ),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: _buildComponentThirteen(
                      ImageConstant.imgLineSystemLock2Line,
                      "lbl_lieu_de_travail",
                      "lbl_tvz"
                  )
              ),
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
  Widget _buildComponentThirteen(String? imagePath, String label, String trailing) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 3.v),
          child: Text("$label".tr, style: theme.textTheme.bodyMedium)),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
          child: Text("$trailing".tr,
              style: CustomTextStyles.bodyMediumPrimary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
