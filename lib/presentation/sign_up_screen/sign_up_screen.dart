import 'controller/sign_up_controller.dart';
import 'package:bgpt/core/app_export.dart';
import 'package:bgpt/core/utils/validation_functions.dart';
import 'package:bgpt/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        height: mediaQueryData.size.height,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 25.v,
                      left: 40.h,
                      right: 40.h,
                      bottom: 43.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup8727,
                            height: 166.v,
                            width: 143.h,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_cr_er_un_nouveau".tr,
                            style: CustomTextStyles.titleMediumBold,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_assurez_vous_que".tr,
                            style: CustomTextStyles.bodySmallBlack900Light10,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "lbl_num_tel".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildPhoneNumber(),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_nni".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildNNI(),
                        SizedBox(height: 31.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_mot_de_passe".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildPassword(),
                        SizedBox(height: 25.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_confirmer_le_mot".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildConfirmPassword(),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              validateStep1();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "lbl_s_next".tr,
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
                                  decoration: AppDecoration
                                      .gradientPrimaryToOnError
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder17,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(
                                  AppRoutes.loginScreen
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_vous_avez_un_compte2".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl_se_connecter".tr,
                                    style:
                                        CustomTextStyles.titleMediumIndigo300,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "lbl_num_tel".tr,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 13.v, 7.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIcbaselinephone,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      textInputType: TextInputType.phone,
      prefixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 13.v,
        right: 30.h,
        bottom: 13.v,
      ),
      validator: (value) {
        if(value == null || (!isValidPhone(value, isRequired: true))) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildNNI() {
    return CustomTextFormField(
      controller: controller.nNIController,
      hintText: "lbl_nni".tr,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 13.v, 7.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIcbaselinephone,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      textInputType: TextInputType.phone,
      prefixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 13.v,
        right: 30.h,
        bottom: 13.v,
      ),
      validator: (value) {
        if(value == null || value.isEmpty || value.length < 13) {
          return "NNI required!";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_mot_de_passe".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 17.v,
            width: 14.h,
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
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 26.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgViewhidefill,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.symmetric(vertical: 13.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.confirmPasswordController,
        hintText: "msg_confirmer_mot_de".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 17.v,
            width: 14.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword1.value =
                !controller.isShowPassword1.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(22.h, 13.v, 26.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgViewhidefill,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 50.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value,
        contentPadding: EdgeInsets.symmetric(vertical: 13.v),
      ),
    );
  }

  void validateStep1() async {

    if(_formKey.currentState!.validate()){

      int response = await controller.storeStep1();
      if(response == 0){
        Get.snackbar("Invalid! ", "User is not exist in our database",
            snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red
        );
      }else if(response == 100){
        Get.snackbar("Warning! ", "Phone already registered! Login now",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);
        Get.toNamed(
          AppRoutes.loginScreen
        );
      }else{
        Get.toNamed(
            AppRoutes.signUpTwoScreen,
            arguments: {
              "userId": response
            }
        );
      }
    }
  }
}
