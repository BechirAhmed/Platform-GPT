import 'package:bgpt/core/database.dart';
import 'package:jiffy/jiffy.dart';

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

class DemandesScreen extends GetView<DemandesController> {
  const DemandesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: _buildAppBar(),
        body: GetBuilder<DemandesController>(
          builder: (cxt) {
            return RefreshIndicator(
              onRefresh: () async {
                await controller.fetchOrders();
                return;
              },
              child: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  padding: EdgeInsets.symmetric(horizontal: 2.v),
                  child: Column(
                      children: [
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
            );
          }
        ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 69.h,
        height: 100.v,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector49x49,
            margin: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 4.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              AppbarSubtitle(
                  text: "lbl_bienvenu".tr,
                  margin: EdgeInsets.only(right: 27.h)),
              SizedBox(height: 3.v),
              AppbarSubtitleOne(
                text: "${Jiffy.now().MMMEd}",
              )
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(32.h, 2.v, 32.h, 2.v))
        ]);
  }

  /// Section Widget
  Widget _buildDemandes() {
    return Expanded(
        child: GetBuilder<DemandesController>(
          builder: (tx) {
            return ListView.separated(
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20.v);
                },
                itemCount: controller.orders.length,
                itemBuilder: (context, index) {
                  Order? model = controller.orders[index];
                  return DemandesItemWidget(model, onTapFrame: () {
                    onTapFrame(model);
                  });
                });
          },
        )
    );
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  onTapFrame(Order? model) {
    Get.toNamed(
      AppRoutes.demandDetailsScreen,
      arguments: [
        model
      ]
    );
  }
}
