import 'controller/login_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/utils/validation_functions.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.blueGray400,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOnboarding(),
                  SizedBox(height: 22.v),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                    height: mediaQueryData.size.height - 100.v,
                    padding: EdgeInsets.only(
                      top: 80.v,
                      left: 30.v,
                      right: 30.v
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_se_connecter_a_votre".tr,
                          style: CustomTextStyles.labelMediumBlack900Bold,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_assurez_vous_que2".tr,
                          style: CustomTextStyles.bodySmallBlack900Light10,
                        ),
                        SizedBox(height: 33.v),
                        Text(
                          "lbl_num_tel".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 14.v),
                        CustomTextFormField(
                          controller: controller.phoneController,
                          hintText: "lbl_num_tel".tr,
                          alignment: Alignment.center,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 13.v, 7.h, 13.v),
                            child: CustomImageView(
                              imagePath:
                              ImageConstant.imgIcbaselinephoneGray50003,
                              height: 24.v,
                              width: 26.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 13.v,
                            right: 30.h,
                            bottom: 13.v,
                          ),
                          textInputType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Phone number required!";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 33.v),
                        Text(
                          "lbl_mot_de_passe".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 15.v),
                        Obx(
                              () => CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: "lbl_mot_de_passe".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: EdgeInsets.fromLTRB(19.h, 15.v, 14.h, 15.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 17.v,
                                width: 15.h,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                !controller.isShowPassword.value;
                              },
                              child: Container(
                                margin:
                                EdgeInsets.fromLTRB(30.h, 13.v, 28.h, 13.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgViewhidefill,
                                  height: 24.v,
                                  width: 26.h,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: controller.isShowPassword.value,
                            contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                          ),
                        ),
                        SizedBox(height: 53.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () async {
                              if(_formKey.currentState!.validate()) {
                                int id = await controller.login();
                                if(id == 0){
                                  Get.snackbar("Invalid! ", "User is not exist in our database",
                                      snackPosition: SnackPosition.BOTTOM,
                                      colorText: Colors.white,
                                      backgroundColor: Colors.red
                                  );
                                } else {
                                  Get.snackbar("Success! ", "Login Success!",
                                      snackPosition: SnackPosition.TOP,
                                      colorText: Colors.white,
                                      backgroundColor: Colors.green
                                  );
                                  Get.offNamed(
                                      AppRoutes.mainClassScreen
                                  );
                                }
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3.v),
                                  child: Text(
                                    "lbl_se_connecter".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                Container(
                                  height: 38.v,
                                  width: 56.h,
                                  margin: EdgeInsets.only(left: 9.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 19.h,
                                    vertical: 8.v,
                                  ),
                                  decoration: AppDecoration.gradientPrimaryToOnError
                                      .copyWith(
                                    borderRadius: BorderRadiusStyle.circleBorder17,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 163.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Get.offNamed(AppRoutes.signUpScreen);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 6.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_vous_n_avez_pas2".tr,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    TextSpan(
                                      text: "lbl_s_enregistrer".tr,
                                      style: CustomTextStyles.titleMediumIndigo300,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboarding() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 31.v),
          Text(
            "msg_salut_bon_retour".tr,
            style: CustomTextStyles.titleMediumOnErrorContainerBold,
          ),
        ],
      ),
    );
  }
}
