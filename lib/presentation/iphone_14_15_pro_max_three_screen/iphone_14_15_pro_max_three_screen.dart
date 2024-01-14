import 'package:cyber_s_application1/core/app_export.dart';
import 'package:cyber_s_application1/widgets/custom_elevated_button.dart';
import 'package:cyber_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  Iphone1415ProMaxThreeScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Veritas".toUpperCase(),
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 77.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Create Account Now!",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Full Name",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 12.v),
                      _buildFullName(context),
                      SizedBox(height: 39.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child:
                              Text("Email", style: theme.textTheme.titleLarge)),
                      SizedBox(height: 13.v),
                      _buildEmail(context),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Password",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      _buildPassword(context),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Phone No",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      _buildPhone(context),
                      SizedBox(height: 54.v),
                      _buildSignUp(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 18.h),
        child: CustomTextFormField(
            controller: fullNameController,
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.fillDeepOrangeTL24));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 18.h),
        child: CustomTextFormField(
            controller: emailController,
            alignment: Alignment.center,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 18.h),
        child: CustomTextFormField(
            controller: passwordController,
            alignment: Alignment.center,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 18.h),
        child: CustomTextFormField(
            controller: phoneController,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 20.h, right: 18.h),
        onPressed: () {
          onTapSignUp(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the iphone1415ProMaxFourScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFourScreen);
  }
}
