import 'controller/creation_d_une_demande_two_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class CreationDUneDemandeTwoDialog extends StatelessWidget {
  CreationDUneDemandeTwoDialog(this.controller, {Key? key}) : super(key: key);

  CreationDUneDemandeTwoController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 30.h, right: 38.h, bottom: 175.v),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 24.v),
            decoration: AppDecoration.fillOnErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 40.v),
                  Container(
                      height: 157.v,
                      width: 242.h,
                      padding:
                          EdgeInsets.only(top: 14.v, right: 68.h, bottom: 14.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup1000004648),
                              fit: BoxFit.cover)),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 101.v,
                                width: 97.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius:
                                        BorderRadius.circular(50.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorOnerrorcontainer,
                            height: 35.v,
                            width: 44.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 26.h, bottom: 32.v))
                      ])),
                  SizedBox(height: 49.v),
                  Text("lbl_f_licitations".tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 12.v),
                  SizedBox(
                      width: 301.h,
                      child: Text("msg_votre_demande_est".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeGray900a5)),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 119.h),
                          child: Text("lbl_39022".tr,
                              style: CustomTextStyles.bodyLargePrimary_1))),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                      text: "msg_retour_a_la_page".tr,
                      margin: EdgeInsets.only(left: 15.h, right: 8.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnErrorContainer,
                      onPressed: () {
                        onTapRetourALaPageDaccueil();
                      })
                ])));
  }

  /// Navigates to the demandesScreen when the action is triggered.
  onTapRetourALaPageDaccueil() {
    Get.toNamed(
      AppRoutes.demandesScreen,
    );
  }
}
