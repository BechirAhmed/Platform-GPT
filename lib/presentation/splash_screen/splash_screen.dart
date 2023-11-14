import 'controller/splash_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395.h,
                child: SingleChildScrollView(
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder42),
                        child: Container(
                            height: 855.v,
                            width: 395.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder42),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgBg,
                                  height: 853.v,
                                  width: 394.h,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 34.h, vertical: 298.v),
                                      decoration: AppDecoration.fillBluegray400
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder42),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPortraitYoung,
                                          height: 257.v,
                                          width: 325.h)))
                            ])))))));
  }
}
