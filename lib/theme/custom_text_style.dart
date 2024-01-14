import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineSmallImprimaPrimary =>
      theme.textTheme.headlineSmall!.imprima.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.46),
      );
  // Label text style
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w900,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Title text style
  static get titleLargeGray200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get titleLargeJockeyOne =>
      theme.textTheme.titleLarge!.jockeyOne.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get imprima {
    return copyWith(
      fontFamily: 'Imprima',
    );
  }

  TextStyle get jockeyOne {
    return copyWith(
      fontFamily: 'Jockey One',
    );
  }
}
