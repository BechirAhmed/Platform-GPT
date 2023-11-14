import '../controller/demandes_controller.dart';
import '../models/demandes_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DemandesItemWidget extends StatelessWidget {
  DemandesItemWidget(
    this.demandesItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  DemandesItemModel demandesItemModelObj;

  var controller = Get.find<DemandesController>();

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFrame!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.only(right: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      demandesItemModelObj.demandeCounter!.value,
                      style: CustomTextStyles.labelLargeTeal900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Obx(
                      () => Text(
                        demandesItemModelObj.widget!.value,
                        style: CustomTextStyles.labelMediumTeal900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              width: 316.h,
              margin: EdgeInsets.only(right: 20.h),
              child: Obx(
                () => Text(
                  demandesItemModelObj.description!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelSmallPoppinsBluegray700,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            CustomElevatedButton(
              height: 18.v,
              width: 65.h,
              text: "lbl_en_attend".tr,
              margin: EdgeInsets.only(right: 8.h),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 6.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDot,
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                ),
              ),
              buttonTextStyle: CustomTextStyles.labelSmallErrorContainer,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}
