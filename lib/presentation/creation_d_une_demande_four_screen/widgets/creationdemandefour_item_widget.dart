import '../controller/creation_d_une_demande_four_controller.dart';
import '../models/creationdemandefour_item_model.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreationdemandefourItemWidget extends StatelessWidget {
  CreationdemandefourItemWidget(
    this.creationdemandefourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreationdemandefourItemModel creationdemandefourItemModelObj;

  var controller = Get.find<CreationDUneDemandeFourController>();

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
                        creationdemandefourItemModelObj.uploadSomeFiles!.value,
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
