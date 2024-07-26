import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:ngodummy/core/app_export.dart';
import 'package:ngodummy/core/utils/validation_functions.dart';
import 'package:ngodummy/widgets/custom_icon_button.dart';
import 'package:ngodummy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildAccountCreationStack(),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 49.h, right: 46.h),
                          child: CustomTextFormField(
                              controller: controller.nameController,
                              hintText: "lbl_name".tr,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "err_msg_please_enter_valid_text".tr;
                                }
                                return null;
                              })),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 48.h, right: 46.h),
                          child: CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              })),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 49.h, right: 45.h),
                          child: CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true)),
                      SizedBox(height: 65.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 96.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignIn();
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 3.v, bottom: 5.v),
                                            child: Text("lbl_sign_in".tr,
                                                style: CustomTextStyles
                                                    .headlineLargeBluegray80001))),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.h),
                                        child: CustomIconButton(
                                            height: 45.adaptSize,
                                            width: 45.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            onTap: () {
                                              onTapBtnArrowRight();
                                            },
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowRight)))
                                  ]))),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: 320.v,
                              width: 264.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 102.h,
                                            top: 94.v,
                                            right: 66.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_sign_up".tr,
                                                  style: CustomTextStyles
                                                      .headlineMediumWhiteA700),
                                              SizedBox(height: 3.v),
                                              SizedBox(
                                                  width: 81.h,
                                                  child: Divider(
                                                      color:
                                                          appTheme.whiteA70001))
                                            ]))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse13320x264,
                                    height: 320.v,
                                    width: 264.h,
                                    alignment: Alignment.center)
                              ])))
                    ]))))));
  }

  /// Section Widget
  Widget _buildAccountCreationStack() {
    return SizedBox(
        height: 292.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 170.h,
                  margin: EdgeInsets.only(left: 32.h, bottom: 53.v),
                  child: Text("lbl_create_account".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displayMedium))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 49.h),
                  child: Text("lbl_sign_in".tr,
                      style: CustomTextStyles.displayMediumBluegray80001))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse15,
              height: 96.v,
              width: 92.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse14,
              height: 104.v,
              width: 68.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse13,
              height: 99.v,
              width: 46.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgCreativityPana,
              height: 253.v,
              width: 226.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 7.v))
        ]));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtSignIn() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapBtnArrowRight() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
