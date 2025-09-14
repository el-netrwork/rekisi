import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'custom_theme.tailor.dart';

@tailor
class _$LinkTheme {
  @themeExtension
  static List<AppColors> colors = AppColors.themes;
  @themeExtension
  static List<AppTextStyles> textStyles = AppTextStyles.themes;
}

@tailorComponent
class _$AppColors {
  // Primary
  static List<Color> primary = [
    const Color(0xFF1542FF),
    const Color(0xFF1542FF),
  ];
  static List<Color> onPrimary = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> primaryContainer = [
    const Color(0xFFDEE0FF),
    const Color(0xFFDEE0FF),
  ];
  static List<Color> onPrimaryContainer = [
    const Color(0xFF000F5C),
    const Color(0xFF000F5C),
  ];
  static List<Color> primaryFixed = [
    const Color(0xFFDEE0FF),
    const Color(0xFFDEE0FF),
  ];
  static List<Color> primaryFixedDim = [
    const Color(0xFFBBC3FF),
    const Color(0xFFBBC3FF),
  ];
  static List<Color> onPrimaryFixed = [
    const Color(0xFF000F5C),
    const Color(0xFF000F5C),
  ];
  static List<Color> onPrimaryFixedVariant = [
    const Color(0xFF002DCC),
    const Color(0xFF002DCC),
  ];
  // Secondary
  static List<Color> secondary = [
    const Color(0xFF5B5D72),
    const Color(0xFF5B5D72),
  ];
  static List<Color> onSecondary = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> secondaryContainer = [
    const Color(0xFFE0E1F9),
    const Color(0xFFE0E1F9),
  ];
  static List<Color> onSecondaryContainer = [
    const Color(0xFF181A2C),
    const Color(0xFF181A2C),
  ];
  static List<Color> secondaryFixed = [
    const Color(0xFFE0E1F9),
    const Color(0xFFE0E1F9),
  ];
  static List<Color> secondaryFixedDim = [
    const Color(0xFFC3C5DD),
    const Color(0xFFC3C5DD),
  ];
  static List<Color> onSecondaryFixed = [
    const Color(0xFF181A2C),
    const Color(0xFF181A2C),
  ];
  static List<Color> onSecondaryFixedVariant = [
    const Color(0xFF434659),
    const Color(0xFF434659),
  ];
  // Tertiary
  static List<Color> tertiary = [
    const Color(0xFF77536D),
    const Color(0xFF77536D),
  ];
  static List<Color> onTertiary = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> tertiaryContainer = [
    const Color(0xFFFFD7F1),
    const Color(0xFFFFD7F1),
  ];
  static List<Color> onTertiaryContainer = [
    const Color(0xFF2D1228),
    const Color(0xFF2D1228),
  ];
  static List<Color> tertiaryFixed = [
    const Color(0xFFFFD7F1),
    const Color(0xFFFFD7F1),
  ];
  static List<Color> tertiaryFixedDim = [
    const Color(0xFFE6BAD7),
    const Color(0xFFE6BAD7),
  ];
  static List<Color> onTertiaryFixed = [
    const Color(0xFF2D1228),
    const Color(0xFF2D1228),
  ];
  static List<Color> onTertiaryFixedVariant = [
    const Color(0xFF5D3C55),
    const Color(0xFF5D3C55),
  ];
  // Neutral
  static List<Color> background = [
    const Color(0xFFFBF8FD),
    const Color(0xFFFBF8FD),
  ];
  static List<Color> onBackground = [
    const Color(0xFF1B1B1F),
    const Color(0xFF1B1B1F),
  ];
  static List<Color> surface = [
    const Color(0xFFFBF8FD),
    const Color(0xFFFBF8FD),
  ];
  static List<Color> surfaceVariant = [
    const Color(0xFFFBF8FD),
    const Color(0xFFFBF8FD),
  ];
  static List<Color> onSurface = [
    const Color(0xFF1B1B1F),
    const Color(0xFF1B1B1F),
  ];
  static List<Color> onSurfaceVariant = [
    const Color(0xFF46464F),
    const Color(0xFF46464F),
  ];
  static List<Color> outline = [
    const Color(0xFF767680),
    const Color(0xFF767680),
  ];
  static List<Color> outlineVariant = [
    const Color(0xFFC7C5D0),
    const Color(0xFFC7C5D0),
  ];
  // Error
  static List<Color> error = [
    const Color(0xFFBA1A1A),
    const Color(0xFFBA1A1A),
  ];
  static List<Color> onError = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> errorContainer = [
    const Color(0xFFFFDAD6),
    const Color(0xFFFFDAD6),
  ];
  static List<Color> onErrorContainer = [
    const Color(0xFF410002),
    const Color(0xFF410002),
  ];

  static List<Color> inverseSurface = [
    const Color(0xFF303034),
    const Color(0xFF303034),
  ];
  static List<Color> inverseOnSurface = [
    const Color(0xFFF3F0F4),
    const Color(0xFFF3F0F4),
  ];
  static List<Color> inversePrimary = [
    const Color(0xFFBBC3FF),
    const Color(0xFFBBC3FF),
  ];
  static List<Color> scrim = [
    const Color(0xFF000000),
    const Color(0xFF000000),
  ];
  static List<Color> shadow = [
    const Color(0xFF000000),
    const Color(0xFF000000),
  ];
  static List<Color> surfaceDim = [
    const Color(0xFFDCD9DE),
    const Color(0xFFDCD9DE),
  ];
  static List<Color> surfaceBright = [
    const Color(0xFFFBF8FD),
    const Color(0xFFFBF8FD),
  ];
  static List<Color> surfaceContainerLowest = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> surfaceContainerLow = [
    const Color(0xFFF6F2F7),
    const Color(0xFFF6F2F7),
  ];
  static List<Color> surfaceContainer = [
    const Color(0xFFF0EDF1),
    const Color(0xFFF0EDF1),
  ];
  static List<Color> surfaceContainerHigh = [
    const Color(0xFFEAE7EC),
    const Color(0xFFEAE7EC),
  ];
  static List<Color> surfaceContainerHighest = [
    const Color(0xFFE4E1E6),
    const Color(0xFFE4E1E6),
  ];
  static List<Color> snackbarBackground = [
    const Color(0xFF46464F),
    const Color(0xFF46464F),
  ];
  static List<Color> snackbarText = [
    const Color(0xFFFFFFFF),
    const Color(0xFFFFFFFF),
  ];
  static List<Color> success = [
    const Color(0xFF46464F),
    const Color(0xFF46464F),
  ];
  static List<Color> divider = [
    const Color(0xFF46464F),
    const Color(0xFF46464F),
  ];
}

@tailorComponent
class _$AppTextStyles {
  static List<TextStyle> headline = [
    const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
  ];
  static List<TextStyle> title = [
    const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
  ];
  static List<TextStyle> body = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  ];
  static List<TextStyle> label = [
    const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ];
  static List<TextStyle> button = [
    const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ];
  static List<TextStyle> link = [
    const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
    ),
  ];
}

extension AppColorsExt on AppColors {
  ColorScheme colorScheme({required Brightness brightness}) =>
      brightness == Brightness.light ? const ColorScheme.light() : const ColorScheme.dark();
}
