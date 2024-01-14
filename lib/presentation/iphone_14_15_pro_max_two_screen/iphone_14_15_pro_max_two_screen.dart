import 'package:cyber_s_application1/core/app_export.dart';
import 'package:cyber_s_application1/widgets/custom_checkbox_button.dart';
import 'package:cyber_s_application1/widgets/custom_elevated_button.dart';
import 'package:cyber_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwoScreen extends StatelessWidget {
  Iphone1415ProMaxTwoScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Veritas".toUpperCase(),
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 67.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("Welcome Back!",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("Login to continue",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("Username",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      _buildUserName(context),
                      SizedBox(height: 51.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("Password",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      _buildPassword(context),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 25.h, right: 9.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildRememberMe(context),
                                    Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: Text("Forget password?",
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                      SizedBox(height: 55.v),
                      _buildLogin(context),
                      SizedBox(height: 28.v),
                      _buildConfirmation(context),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("Or   ",
                              style: CustomTextStyles.titleLargeMedium)),
                      SizedBox(height: 6.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgBrandingGuideDo2,
                          height: 87.v,
                          width: 348.h,
                          margin: EdgeInsets.only(left: 6.h)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 9.h),
        child: CustomTextFormField(
            controller: userNameController, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 9.h),
        child: CustomTextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return CustomCheckboxButton(
        text: "Remember me",
        value: rememberMe,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          rememberMe = value;
        });
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        margin: EdgeInsets.only(left: 15.h, right: 9.h),
        buttonStyle: CustomButtonStyles.fillOnError,
        buttonTextStyle: CustomTextStyles.titleLargePrimary,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return CustomElevatedButton(
        height: 15.v,
        text: "Don’t have an account? Sign Up",
        buttonStyle: CustomButtonStyles.none,
        buttonTextStyle: CustomTextStyles.labelLargeffffffff,
        onPressed: () {
          onTapConfirmation(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the iphone1415ProMaxThreeScreen when the action is triggered.
  onTapConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxThreeScreen);
  }
}
