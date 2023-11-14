import '../creation_d_une_demande_one_screen/widgets/creationdemandeone_item_widget.dart';
import 'controller/creation_d_une_demande_one_controller.dart';
import 'models/creationdemandeone_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/app_bar/appbar_leading_image.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bgpt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bgpt/widgets/app_bar/custom_app_bar.dart';
import 'package:bgpt/widgets/custom_drop_down.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreationDUneDemandeOneScreen
    extends GetWidget<CreationDUneDemandeOneController> {
  const CreationDUneDemandeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 394.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 54.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 14.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_cr_ation_d_une_demande".tr,
                            style: CustomTextStyles.titleSmallBlack900,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildCreationDemande(),
                        SizedBox(height: 17.v),
                        _buildCreationDemandeOne(),
                        SizedBox(height: 54.v),
                        CustomElevatedButton(
                          height: 50.v,
                          text: "lbl_soumettre".tr,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 18.h,
                          ),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 67.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector49x49,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 2.v,
          bottom: 4.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_bienvenu".tr,
              margin: EdgeInsets.only(right: 27.h),
            ),
            SizedBox(height: 3.v),
            AppbarSubtitleOne(
              text: "msg_monday_3_october".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(32.h, 15.v, 32.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCreationDemande() {
    return SizedBox(
      height: 205.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 42.v),
            child: CustomDropDown(
              width: 344.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 11.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdownBlueGray30002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              alignment: Alignment.bottomCenter,
              items: controller
                  .creationDUneDemandeOneModelObj.value.dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_nom_d_affaire".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 9.v),
                CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdownBlueGray30002,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  hintText: "msg_choisir_votre_nom".tr,
                  items: controller.creationDUneDemandeOneModelObj.value
                      .dropdownItemList1!.value,
                  contentPadding: EdgeInsets.only(
                    left: 12.h,
                    top: 13.v,
                    bottom: 13.v,
                  ),
                  onChanged: (value) {
                    controller.onSelected1(value);
                  },
                ),
                SizedBox(height: 27.v),
                Text(
                  "lbl_type_d_affaire".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_choisir_le_type".tr,
                    style: CustomTextStyles.bodySmallBlack900Light,
                  ),
                ),
                SizedBox(height: 37.v),
                Text(
                  "msg_importation_des".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreationDemandeOne() {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 41.v,
            crossAxisCount: 2,
            mainAxisSpacing: 29.h,
            crossAxisSpacing: 29.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.creationDUneDemandeOneModelObj.value
              .creationdemandeoneItemList.value.length,
          itemBuilder: (context, index) {
            CreationdemandeoneItemModel model = controller
                .creationDUneDemandeOneModelObj
                .value
                .creationdemandeoneItemList
                .value[index];
            return CreationdemandeoneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 108.h,
            child: Divider(),
          ),
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL42,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1000004634,
                  height: 25.v,
                  width: 341.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 6.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_profile".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      TextSpan(
                        text: "lbl_param_tres".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      TextSpan(
                        text: "         ".tr,
                      ),
                      TextSpan(
                        text: "     ".tr,
                      ),
                      TextSpan(
                        text: "lbl_nouveau".tr,
                        style: CustomTextStyles.labelMediumPrimary,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "            ".tr,
                      ),
                      TextSpan(
                        text: "lbl_demandes".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      TextSpan(
                        text: "          ".tr,
                      ),
                      TextSpan(
                        text: "lbl_aide".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
