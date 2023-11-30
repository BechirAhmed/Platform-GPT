import 'package:bgpt/presentation/demandes_screen/demandes_screen.dart';
import 'package:bgpt/presentation/main_class/main_class_screen.dart';
import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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


class CreationDUneDemandeFourScreen extends GetView<CreationDUneDemandeFourController> {
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
        // appBar: _buildAppBar(),
        body: GetBuilder<CreationDUneDemandeFourController>(
          builder: (ctx) {
            return Container(
              width: mediaQueryData.size.width,
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
                          right: 22.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_cr_ation_d_une_demande".tr,
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            // _buildCreationDemandeEditText(),
                            Text(
                              "lbl_nom_d_affaire".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 9.v),
                            CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.fromLTRB(30.h, 1.v, 13.h, 1.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                              ),
                              hintText: "lbl_nom_d_affaire".tr,
                              items: controller.creationDUneDemandeFourModelObj.value
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
                            SizedBox(height: 15.v),
                            Text(
                              "lbl_type_d_affaire".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 9.v),
                            CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.fromLTRB(30.h, 1.v, 13.h, 1.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                ),
                              ),
                              hintText: "lbl_type_d_affaire".tr,
                              items: controller.creationDUneDemandeFourModelObj.value
                                  .dropdownItemList2!.value,
                              contentPadding: EdgeInsets.only(
                                left: 12.h,
                                top: 13.v,
                                bottom: 13.v,
                              ),
                              onChanged: (value) {
                                controller.onSelected2(value);
                              },
                            ),
                            SizedBox(height: 15.v),
                            Text(
                              "lbl_compte_bancaire".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 9.v),
                            CustomTextFormField(
                              controller: controller.editTextController,
                              hintText: "lbl_compte_bancaire".tr,
                              autofocus: false,
                              prefixConstraints: BoxConstraints(
                                maxHeight: 50.v,
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 15.v,
                                right: 30.h,
                                bottom: 15.v,
                                left: 13.v,
                              ),
                              borderDecoration: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.h),
                                borderSide: BorderSide(width: 1.0, color: appTheme.blueGray400),
                              ),
                              elevation: 3,
                            ),
                            SizedBox(height: 15.v,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_wilaya".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 9.v),
                                    CustomDropDown(
                                      width: mediaQueryData.size.width / 2.3,
                                      icon: Container(
                                        margin: EdgeInsets.fromLTRB(0.h, 1.v, 10.h, 0.v),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                        ),
                                      ),
                                      hintText: "lbl_wilaya".tr,
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
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_moughataa".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 9.v),
                                    CustomDropDown(
                                      width: mediaQueryData.size.width / 2.3,
                                      icon: Container(
                                        margin: EdgeInsets.fromLTRB(0.h, 1.v, 10.h, 0.v),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                        ),
                                      ),
                                      hintText: "lbl_moughataa".tr,
                                      items: controller.creationDUneDemandeFourModelObj.value
                                          .dropdownItemList4!.value,
                                      contentPadding: EdgeInsets.only(
                                        left: 12.h,
                                        top: 13.v,
                                        bottom: 13.v,
                                      ),
                                      onChanged: (value) {
                                        controller.onSelected4(value);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 28.v),
                            _buildCreationDemandeFour(),
                            SizedBox(height: 30.v),
                            CustomElevatedButton(
                              height: 50.v,
                              isLoading: controller.isSubmitting,
                              text: "lbl_soumettre".tr,
                              margin: EdgeInsets.only(
                                left: 10.h,
                                right: 18.h,
                              ),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL25,
                              onPressed: () {
                                onSubmit(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        ),
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

  void onSubmit(BuildContext context) async {
    int response = await controller.storeDemande();
    if(response != 0) {
      controller.editTextController.clear();
      
      showDialog(context: context, builder: (BuildContext ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(30.0)),
          child: Container(
            height: MediaQuery.sizeOf(context).height - 300,
            width: MediaQuery.sizeOf(context).width,
            padding: EdgeInsets.symmetric(
              vertical: 40.v,
              horizontal: 20.h
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDialog,
                  fit: BoxFit.contain,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                ),
                SizedBox(height: 40.v,),
                Text(
                  "Félicitations!",
                  style:TextStyle(
                    fontSize: 30,
                    color: appTheme.blueGray400,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 40.v,),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Votre Demande est soumise avec Success. Votre numéro de dossier est ",
                          style:TextStyle(
                            fontSize: 15,
                            color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: "$response",
                          style:TextStyle(
                            fontSize: 15,
                            color: appTheme.blueGray400,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    ),
                  )
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 50.v,
                  text: "Retour a la page d’accueil",
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 18.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL25,
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    controller.tabController.jumpToTab(0);
                    controller.demandesController.fetchOrders();
                  },
                ),
              ],
            ),
          ),
        );
      });
      
      // Get.snackbar("Success ", "Demande created successfully",
      //     snackPosition: SnackPosition.TOP,
      //     colorText: Colors.white,
      //     backgroundColor: appTheme.blueGray400
      // );
      // Navigator.popAndPushNamed(context, AppRoutes.mainClassScreen);
      // Get.toNamed(
      //     AppRoutes.demandesScreen
      // );
    }else{
      Get.snackbar("Error! ", "Something went wrong.",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: appTheme.redA700
      );
    }
  }
}
