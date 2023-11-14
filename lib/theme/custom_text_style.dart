import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.88),
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.88),
      );
  static get bodyLargeGray900a5 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900A5,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumAlmaraiGray600 =>
      theme.textTheme.bodyMedium!.almarai.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.1),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.23),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack900Light10 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.21),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallDMSansGray50001 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitTeal900 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.teal900,
        fontSize: 12.fSize,
      );
  static get bodySmallYellow800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow800,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallAlmarai =>
      theme.textTheme.headlineSmall!.almarai.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallAlmaraiGreenA70001 =>
      theme.textTheme.headlineSmall!.almarai.copyWith(
        color: appTheme.greenA70001,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeDMSansGray700 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get labelLargeDMSansGray900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeOutfitTeal900 =>
      theme.textTheme.labelLarge!.outfit.copyWith(
        color: appTheme.teal900,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSmartBluegray300 =>
      theme.textTheme.labelLarge!.smart.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSmartPrimary =>
      theme.textTheme.labelLarge!.smart.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeTeal900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal900,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
      );
  static get labelMediumBlack900Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGreenA70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumLightblue900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get labelMediumLightblue900Bold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlue900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumTeal900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallErrorContainer => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGreenA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallMedium => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsBluegray700 =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRedA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  // Title text style
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsOnErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo300,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallDMSansGray900 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.64),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get almarai {
    return copyWith(
      fontFamily: 'Almarai',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get smart {
    return copyWith(
      fontFamily: 'Smart',
    );
  }
}
