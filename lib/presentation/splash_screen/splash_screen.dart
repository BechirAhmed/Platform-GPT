import 'controller/splash_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.blueGray400,
        body: Container(
            height: mediaQueryData.size.height,
            width: mediaQueryData.size.width,
            child:
                Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 64.h, vertical: 298.v),
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPortraitYoung,
                          height: 257.v,
                          width: 325.h)))
            ])));
  }
}
