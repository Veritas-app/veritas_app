import 'package:cyber_s_application1/core/app_export.dart';
import 'package:cyber_s_application1/widgets/custom_elevated_button.dart';
import 'package:cyber_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourScreen extends StatelessWidget {
  Iphone1415ProMaxFourScreen({Key? key}) : super(key: key);

  TextEditingController exController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Veritas".toUpperCase(),
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 53.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("UPLOAD YOUR PHOTO",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 35.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 265.v,
                              width: 266.h,
                              padding: EdgeInsets.symmetric(vertical: 75.v),
                              decoration: AppDecoration.outlinePrimary,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgDpIcon1,
                                  height: 110.v,
                                  width: 111.h,
                                  alignment: Alignment.center))),
                      SizedBox(height: 70.v),
                      Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("ENROLLMENT NUMBER",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 60.v),
                      CustomTextFormField(
                          controller: exController,
                          hintText: "Ex:3984723852",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
                          borderDecoration:
                              TextFormFieldStyleHelper.underLinePrimary,
                          filled: false),
                      SizedBox(height: 85.v),
                      CustomElevatedButton(
                          text: "Continue",
                          margin: EdgeInsets.only(left: 2.h),
                          onPressed: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the iphone1415ProMaxFiveScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxFiveScreen);
  }
}
