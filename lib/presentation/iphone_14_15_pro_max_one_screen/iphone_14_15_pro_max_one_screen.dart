import 'package:cyber_s_application1/core/app_export.dart';
import 'package:cyber_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 45.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 45.h),
                          child: Text("Veritas".toUpperCase(),
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 55.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLawyerPana1,
                      height: 289.adaptSize,
                      width: 289.adaptSize),
                  SizedBox(height: 61.v),
                  Text("Hello , Welcome !",
                      style: theme.textTheme.displaySmall),
                  SizedBox(height: 18.v),
                  SizedBox(
                      width: 281.h,
                      child: Text(
                          "Welcome to Veritas! Top platform for Lawers and Clients",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 73.v),
                  CustomElevatedButton(
                      width: 291.h,
                      text: "I’m  a LAWYER",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleLargePrimary,
                      onPressed: () {
                        onTapImALAWYER(context);
                      },
                      alignment: Alignment.centerRight),
                  SizedBox(height: 44.v),
                  CustomElevatedButton(
                      text: "I need a LAWYER",
                      margin: EdgeInsets.only(right: 126.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                      buttonTextStyle: CustomTextStyles.titleLargeGray200,
                      onPressed: () {
                        onTapINeedALAWYER(context);
                      },
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapImALAWYER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapINeedALAWYER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
