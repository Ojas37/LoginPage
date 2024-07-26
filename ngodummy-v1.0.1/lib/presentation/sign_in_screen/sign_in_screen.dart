import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:ngodummy/core/app_export.dart';
import 'package:ngodummy/core/utils/validation_functions.dart';
import 'package:ngodummy/widgets/custom_icon_button.dart';
import 'package:ngodummy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

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
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          SizedBox(
                              height: 578.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 578.v,
                                            width: 367.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse11,
                                                      height: 578.v,
                                                      width: 367.h,
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 38.h,
                                                                  right: 47.h,
                                                                  bottom: 54.v),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                    child: CustomTextFormField(
                                                                        controller: controller.nameController,
                                                                        hintText: "lbl_name".tr,
                                                                        validator: (value) {
                                                                          if (!isText(
                                                                              value)) {
                                                                            return "err_msg_please_enter_valid_text".tr;
                                                                          }
                                                                          return null;
                                                                        })),
                                                                SizedBox(
                                                                    height:
                                                                        42.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
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
                                                                SizedBox(
                                                                    height:
                                                                        39.v),
                                                                CustomTextFormField(
                                                                    controller:
                                                                        controller
                                                                            .passwordController,
                                                                    hintText:
                                                                        "lbl_password"
                                                                            .tr,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done,
                                                                    textInputType:
                                                                        TextInputType
                                                                            .visiblePassword,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidPassword(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "err_msg_please_enter_valid_password"
                                                                            .tr;
                                                                      }
                                                                      return null;
                                                                    },
                                                                    obscureText:
                                                                        true)
                                                              ])))
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCreativityPana,
                                        height: 253.v,
                                        width: 220.h,
                                        alignment: Alignment.topRight),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            width: 170.h,
                                            margin: EdgeInsets.only(
                                                left: 20.h, top: 115.v),
                                            child: Text("lbl_create_account".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .displayMediumBluegray80001_1)))
                                  ])),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.only(left: 90.h),
                              child: Row(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignUp();
                                    },
                                    child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.v),
                                        child: Text("lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .headlineLargeBluegray80001Medium))),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: CustomIconButton(
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        onTap: () {
                                          onTapBtnArrowRight();
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowRight)))
                              ])),
                          SizedBox(height: 29.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  height: 320.v,
                                  width: 267.h,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse12,
                                            height: 320.v,
                                            width: 267.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 105.h,
                                                    top: 82.v,
                                                    right: 77.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtSignIn();
                                                          },
                                                          child: Text(
                                                              "lbl_sign_in".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineMedium)),
                                                      SizedBox(height: 3.v),
                                                      SizedBox(
                                                          width: 81.h,
                                                          child: Divider())
                                                    ])))
                                      ])))
                        ]))))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapBtnArrowRight() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignIn() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
