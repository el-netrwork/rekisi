import 'package:flutter/material.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getThemeData({Brightness brightness = Brightness.light}) {
    final themeData =
        brightness == Brightness.light ? ThemeData.light() : ThemeData.dark();
    final colors =
        brightness == Brightness.light ? AppColors.light : AppColors.dark;
    final textStyles = AppTextStyles.light;
    return themeData.copyWith(
      primaryColor: colors.onSurface,
      colorScheme: colors.colorScheme(brightness: brightness),
      textTheme: themeData.textTheme.apply(
        bodyColor: colors.primary,
        displayColor: colors.primary,
      ),
      dialogTheme: DialogTheme(
        titleTextStyle: TextStyle(color: colors.onSurface, fontSize: 22),
        contentTextStyle: TextStyle(color: colors.onSurface),
        backgroundColor: colors.surface,
        surfaceTintColor: colors.surface
      ),
      scaffoldBackgroundColor: colors.surface,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            surfaceTintColor: Colors.white,
            side: const BorderSide(color: Colors.green)),
      ),
      iconTheme: themeData.iconTheme.copyWith(
        color: colors.primary,
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        elevation: 0,
        titleTextStyle: textStyles.title.copyWith(
          color: Colors.white,
        ),
        backgroundColor: colors.primary,
        centerTitle: true,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      ),
      extensions: <ThemeExtension<dynamic>>[
        LinkTheme(colors: colors, textStyles: textStyles),
      ],
      // Warning: IconButtonTheme needs to be set till this is fixed: https://github.com/flutter/flutter/issues/130485
      iconButtonTheme: const IconButtonThemeData(style: ButtonStyle()),
      bottomSheetTheme: _getBottomSheetThemeData(colors: colors),
      // buttonTheme: ButtonThemeData(textTheme: Tex),
      scrollbarTheme: ScrollbarThemeData(
          thumbColor:
              MaterialStateProperty.all(colors.onSurface.withOpacity(0.3))),
      // Warning: textSelectionTheme must be overwritten here.
      // Overriding theme only around TextField does not work for [selectionHandleColor]
      textSelectionTheme: _getTextSelectionThemeData(colors: colors),
    );
  }
}

BottomSheetThemeData _getBottomSheetThemeData({
  required AppColors colors,
}) =>
    BottomSheetThemeData(
      backgroundColor: colors.surface,
      surfaceTintColor: colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
    );

TextSelectionThemeData _getTextSelectionThemeData({
  required AppColors colors,
}) =>
    TextSelectionThemeData(
      cursorColor: colors.secondary,
      selectionColor: colors.secondary.withOpacity(0.3),
      selectionHandleColor: colors.secondary,
    );
