import '../controller/main_class_controller.dart';
import '../models/creationdemandeone_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreationdemandeoneItemWidget extends StatelessWidget {
  CreationdemandeoneItemWidget(
    this.creationdemandeoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreationdemandeoneItemModel creationdemandeoneItemModelObj;

  var controller = Get.find<MainClassController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 163.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFormKontur3,
            height: 40.v,
            width: 163.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 9.v,
              ),
              child: Row(
                children: [
                  Container(
                    height: 20.v,
                    width: 19.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillBluegray30002.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcon14,
                      height: 9.v,
                      width: 10.h,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Obx(
                      () => Text(
                        creationdemandeoneItemModelObj.uploadSomeFiles!.value,
                        style: CustomTextStyles.labelSmallMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
