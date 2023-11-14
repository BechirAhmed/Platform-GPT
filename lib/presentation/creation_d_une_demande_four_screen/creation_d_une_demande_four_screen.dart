import '../creation_d_une_demande_four_screen/widgets/creationdemandefour_item_widget.dart';
import 'controller/creation_d_une_demande_four_controller.dart';
import 'models/creationdemandefour_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/app_bar/appbar_leading_image.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle.dart';
import 'package:bgpt/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bgpt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bgpt/widgets/app_bar/custom_app_bar.dart';
import 'package:bgpt/widgets/custom_drop_down.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreationDUneDemandeFourScreen
    extends GetWidget<CreationDUneDemandeFourController> {
  const CreationDUneDemandeFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: 394.h,
          padding: EdgeInsets.symmetric(vertical: 1.v),
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
                        _buildCreationDemandeEditText(),
                        SizedBox(height: 10.v),
                        _buildCreationDemandeFour(),
                        SizedBox(height: 30.v),
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
  Widget _buildCreationDemandeEditText() {
    return SizedBox(
      height: 319.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 102.v),
            child: CustomDropDown(
              width: 344.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdownBlueGray30002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              alignment: Alignment.topCenter,
              items: controller.creationDUneDemandeFourModelObj.value
                  .dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              bottom: 94.v,
            ),
            child: CustomTextFormField(
              width: 144.h,
              controller: controller.editTextController,
              textInputAction: TextInputAction.done,
              alignment: Alignment.bottomLeft,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 94.v),
            child: CustomDropDown(
              width: 144.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 13.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdownBlueGray30002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              alignment: Alignment.bottomRight,
              items: controller.creationDUneDemandeFourModelObj.value
                  .dropdownItemList1!.value,
              onChanged: (value) {
                controller.onSelected1(value);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25.v),
            child: CustomDropDown(
              width: 144.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 5.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdownBlueGray30002,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              alignment: Alignment.bottomLeft,
              items: controller.creationDUneDemandeFourModelObj.value
                  .dropdownItemList2!.value,
              onChanged: (value) {
                controller.onSelected2(value);
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
                  hintText: "lbl_coiffeur".tr,
                  items: controller.creationDUneDemandeFourModelObj.value
                      .dropdownItemList3!.value,
                  contentPadding: EdgeInsets.only(
                    left: 12.h,
                    top: 13.v,
                    bottom: 13.v,
                  ),
                  onChanged: (value) {
                    controller.onSelected3(value);
                  },
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_type_d_affaire".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_travailleur_ind_pendant".tr,
                    style: CustomTextStyles.labelMediumLightblue900,
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Text(
                        "lbl_compte_bancaire".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 88.h),
                        child: Text(
                          "lbl_wilaya".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 78.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_saisir_le_num_de".tr,
                        style: CustomTextStyles.poppinsBlack900,
                      ),
                      Text(
                        "msg_choisir_le_wilaya".tr,
                        style: CustomTextStyles.poppinsBlack900,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_moughataa".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "msg_choisir_moughataa".tr,
                    style: CustomTextStyles.poppinsBlack900,
                  ),
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "msg_importation_des".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreationDemandeFour() {
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
          itemCount: controller.creationDUneDemandeFourModelObj.value
              .creationdemandefourItemList.value.length,
          itemBuilder: (context, index) {
            CreationdemandefourItemModel model = controller
                .creationDUneDemandeFourModelObj
                .value
                .creationdemandefourItemList
                .value[index];
            return CreationdemandefourItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      margin: EdgeInsets.only(left: 6.h),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1000004634,
                  height: 25.v,
                  width: 341.h,
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
