import 'dart:ui';
import 'package:cyber_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.h),
        ),
      );
  static ButtonStyle get fillOnError => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.h),
        ),
      );
  static ButtonStyle get fillPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
