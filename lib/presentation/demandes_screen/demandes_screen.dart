import '../demandes_screen/widgets/demandes_item_widget.dart';
import 'controller/demandes_controller.dart';
import 'models/demandes_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/app_bar/appbar_leading_image.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bgpt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bgpt/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DemandesScreen extends GetWidget<DemandesController> {
  const DemandesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 395.h,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Column(children: [
                  SizedBox(height: 35.v),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder42),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("lbl_mes_demandes".tr,
                                            style: CustomTextStyles
                                                .labelLargeSemiBold)),
                                    SizedBox(height: 22.v),
                                    _buildDemandes()
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 69.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector49x49,
            margin: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 4.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(children: [
              AppbarSubtitle(
                  text: "lbl_bienvenu".tr,
                  margin: EdgeInsets.only(right: 27.h)),
              SizedBox(height: 3.v),
              AppbarSubtitleOne(text: "msg_monday_3_october".tr)
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(32.h, 8.v, 32.h, 27.v))
        ]);
  }

  /// Section Widget
  Widget _buildDemandes() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount:
                controller.demandesModelObj.value.demandesItemList.value.length,
            itemBuilder: (context, index) {
              DemandesItemModel model = controller
                  .demandesModelObj.value.demandesItemList.value[index];
              return DemandesItemWidget(model, onTapFrame: () {
                onTapFrame();
              });
            })));
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

  /// Navigates to the profileOneScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
