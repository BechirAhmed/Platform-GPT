import 'package:flutter/material.dart';
import 'package:bgpt/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray40001,
      );
  static BoxDecoration get fillBluegray30002 => BoxDecoration(
        color: appTheme.blueGray30002,
      );
  static BoxDecoration get fillBluegray400 => BoxDecoration(
        color: appTheme.blueGray400,
      );
  static BoxDecoration get fillBluegray90023 => BoxDecoration(
        color: appTheme.blueGray90023,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green70068,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50,
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onError,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              20,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeF => BoxDecoration(
        color: appTheme.blueGray40001,
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange1003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get circleBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL42 => BorderRadius.only(
        topLeft: Radius.circular(11.h),
        topRight: Radius.circular(11.h),
        bottomLeft: Radius.circular(42.h),
        bottomRight: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL42 => BorderRadius.vertical(
        top: Radius.circular(42.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get roundedBorder61 => BorderRadius.circular(
        61.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
