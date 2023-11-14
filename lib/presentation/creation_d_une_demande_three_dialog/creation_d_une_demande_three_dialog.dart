import 'controller/creation_d_une_demande_three_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

class CreationDUneDemandeThreeDialog extends StatelessWidget {
  CreationDUneDemandeThreeDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  CreationDUneDemandeThreeController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        height: 236.v,
        width: 260.h,
        margin: EdgeInsets.only(
          left: 90.h,
          right: 44.h,
          bottom: 244.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
          vertical: 30.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder17,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgTabControlls2,
          height: 170.v,
          width: 12.h,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
