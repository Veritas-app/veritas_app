import 'package:cyber_s_application1/core/app_export.dart';
import 'package:cyber_s_application1/widgets/custom_elevated_button.dart';
import 'package:cyber_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxFiveScreen extends StatelessWidget {
  Iphone1415ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 33.h,
            vertical: 65.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "tell us more about yourself...",
                style: CustomTextStyles.titleLargeJockeyOne,
              ),
              SizedBox(height: 45.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Enter your work Experience:",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(right: 11.h),
                child: CustomTextFormField(
                  controller: editTextController,
                ),
              ),
              SizedBox(height: 51.v),
              Text(
                "Enter your Educational details:",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 8.h,
                ),
                child: CustomTextFormField(
                  controller: editTextController1,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "Select one",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Spacer(),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                text: "Sign Up",
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 16.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
