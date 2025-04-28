// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'custom_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class LinkTheme extends ThemeExtension<LinkTheme> {
  const LinkTheme({
    required this.colors,
    required this.textStyles,
  });

  final AppColors colors;
  final AppTextStyles textStyles;

  static final LinkTheme light = LinkTheme(
    colors: _$LinkTheme.colors[0],
    textStyles: _$LinkTheme.textStyles[0],
  );

  static final LinkTheme dark = LinkTheme(
    colors: _$LinkTheme.colors[1],
    textStyles: _$LinkTheme.textStyles[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  LinkTheme copyWith({
    AppColors? colors,
    AppTextStyles? textStyles,
  }) {
    return LinkTheme(
      colors: colors ?? this.colors,
      textStyles: textStyles ?? this.textStyles,
    );
  }

  @override
  LinkTheme lerp(covariant ThemeExtension<LinkTheme>? other, double t) {
    if (other is! LinkTheme) return this as LinkTheme;
    return LinkTheme(
      colors: colors.lerp(other.colors, t) as AppColors,
      textStyles: textStyles.lerp(other.textStyles, t) as AppTextStyles,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkTheme &&
            const DeepCollectionEquality().equals(colors, other.colors) &&
            const DeepCollectionEquality()
                .equals(textStyles, other.textStyles));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(textStyles),
    );
  }
}

extension LinkThemeBuildContextProps on BuildContext {
  LinkTheme get linkTheme => Theme.of(this).extension<LinkTheme>()!;
  AppColors get colors => linkTheme.colors;
  AppTextStyles get textStyles => linkTheme.textStyles;
}

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.divider,
    required this.error,
    required this.errorContainer,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.inverseSurface,
    required this.onBackground,
    required this.onError,
    required this.onErrorContainer,
    required this.onPrimary,
    required this.onPrimaryContainer,
    required this.onPrimaryFixed,
    required this.onPrimaryFixedVariant,
    required this.onSecondary,
    required this.onSecondaryContainer,
    required this.onSecondaryFixed,
    required this.onSecondaryFixedVariant,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.onTertiary,
    required this.onTertiaryContainer,
    required this.onTertiaryFixed,
    required this.onTertiaryFixedVariant,
    required this.outline,
    required this.outlineVariant,
    required this.primary,
    required this.primaryContainer,
    required this.primaryFixed,
    required this.primaryFixedDim,
    required this.scrim,
    required this.secondary,
    required this.secondaryContainer,
    required this.secondaryFixed,
    required this.secondaryFixedDim,
    required this.shadow,
    required this.snackbarBackground,
    required this.snackbarText,
    required this.success,
    required this.surface,
    required this.surfaceBright,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.surfaceContainerLow,
    required this.surfaceContainerLowest,
    required this.surfaceDim,
    required this.surfaceVariant,
    required this.tertiary,
    required this.tertiaryContainer,
    required this.tertiaryFixed,
    required this.tertiaryFixedDim,
  });

  final Color background;
  final Color divider;
  final Color error;
  final Color errorContainer;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color inverseSurface;
  final Color onBackground;
  final Color onError;
  final Color onErrorContainer;
  final Color onPrimary;
  final Color onPrimaryContainer;
  final Color onPrimaryFixed;
  final Color onPrimaryFixedVariant;
  final Color onSecondary;
  final Color onSecondaryContainer;
  final Color onSecondaryFixed;
  final Color onSecondaryFixedVariant;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color onTertiary;
  final Color onTertiaryContainer;
  final Color onTertiaryFixed;
  final Color onTertiaryFixedVariant;
  final Color outline;
  final Color outlineVariant;
  final Color primary;
  final Color primaryContainer;
  final Color primaryFixed;
  final Color primaryFixedDim;
  final Color scrim;
  final Color secondary;
  final Color secondaryContainer;
  final Color secondaryFixed;
  final Color secondaryFixedDim;
  final Color shadow;
  final Color snackbarBackground;
  final Color snackbarText;
  final Color success;
  final Color surface;
  final Color surfaceBright;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color surfaceContainerLow;
  final Color surfaceContainerLowest;
  final Color surfaceDim;
  final Color surfaceVariant;
  final Color tertiary;
  final Color tertiaryContainer;
  final Color tertiaryFixed;
  final Color tertiaryFixedDim;

  static final AppColors light = AppColors(
    background: _$AppColors.background[0],
    divider: _$AppColors.divider[0],
    error: _$AppColors.error[0],
    errorContainer: _$AppColors.errorContainer[0],
    inverseOnSurface: _$AppColors.inverseOnSurface[0],
    inversePrimary: _$AppColors.inversePrimary[0],
    inverseSurface: _$AppColors.inverseSurface[0],
    onBackground: _$AppColors.onBackground[0],
    onError: _$AppColors.onError[0],
    onErrorContainer: _$AppColors.onErrorContainer[0],
    onPrimary: _$AppColors.onPrimary[0],
    onPrimaryContainer: _$AppColors.onPrimaryContainer[0],
    onPrimaryFixed: _$AppColors.onPrimaryFixed[0],
    onPrimaryFixedVariant: _$AppColors.onPrimaryFixedVariant[0],
    onSecondary: _$AppColors.onSecondary[0],
    onSecondaryContainer: _$AppColors.onSecondaryContainer[0],
    onSecondaryFixed: _$AppColors.onSecondaryFixed[0],
    onSecondaryFixedVariant: _$AppColors.onSecondaryFixedVariant[0],
    onSurface: _$AppColors.onSurface[0],
    onSurfaceVariant: _$AppColors.onSurfaceVariant[0],
    onTertiary: _$AppColors.onTertiary[0],
    onTertiaryContainer: _$AppColors.onTertiaryContainer[0],
    onTertiaryFixed: _$AppColors.onTertiaryFixed[0],
    onTertiaryFixedVariant: _$AppColors.onTertiaryFixedVariant[0],
    outline: _$AppColors.outline[0],
    outlineVariant: _$AppColors.outlineVariant[0],
    primary: _$AppColors.primary[0],
    primaryContainer: _$AppColors.primaryContainer[0],
    primaryFixed: _$AppColors.primaryFixed[0],
    primaryFixedDim: _$AppColors.primaryFixedDim[0],
    scrim: _$AppColors.scrim[0],
    secondary: _$AppColors.secondary[0],
    secondaryContainer: _$AppColors.secondaryContainer[0],
    secondaryFixed: _$AppColors.secondaryFixed[0],
    secondaryFixedDim: _$AppColors.secondaryFixedDim[0],
    shadow: _$AppColors.shadow[0],
    snackbarBackground: _$AppColors.snackbarBackground[0],
    snackbarText: _$AppColors.snackbarText[0],
    success: _$AppColors.success[0],
    surface: _$AppColors.surface[0],
    surfaceBright: _$AppColors.surfaceBright[0],
    surfaceContainer: _$AppColors.surfaceContainer[0],
    surfaceContainerHigh: _$AppColors.surfaceContainerHigh[0],
    surfaceContainerHighest: _$AppColors.surfaceContainerHighest[0],
    surfaceContainerLow: _$AppColors.surfaceContainerLow[0],
    surfaceContainerLowest: _$AppColors.surfaceContainerLowest[0],
    surfaceDim: _$AppColors.surfaceDim[0],
    surfaceVariant: _$AppColors.surfaceVariant[0],
    tertiary: _$AppColors.tertiary[0],
    tertiaryContainer: _$AppColors.tertiaryContainer[0],
    tertiaryFixed: _$AppColors.tertiaryFixed[0],
    tertiaryFixedDim: _$AppColors.tertiaryFixedDim[0],
  );

  static final AppColors dark = AppColors(
    background: _$AppColors.background[1],
    divider: _$AppColors.divider[1],
    error: _$AppColors.error[1],
    errorContainer: _$AppColors.errorContainer[1],
    inverseOnSurface: _$AppColors.inverseOnSurface[1],
    inversePrimary: _$AppColors.inversePrimary[1],
    inverseSurface: _$AppColors.inverseSurface[1],
    onBackground: _$AppColors.onBackground[1],
    onError: _$AppColors.onError[1],
    onErrorContainer: _$AppColors.onErrorContainer[1],
    onPrimary: _$AppColors.onPrimary[1],
    onPrimaryContainer: _$AppColors.onPrimaryContainer[1],
    onPrimaryFixed: _$AppColors.onPrimaryFixed[1],
    onPrimaryFixedVariant: _$AppColors.onPrimaryFixedVariant[1],
    onSecondary: _$AppColors.onSecondary[1],
    onSecondaryContainer: _$AppColors.onSecondaryContainer[1],
    onSecondaryFixed: _$AppColors.onSecondaryFixed[1],
    onSecondaryFixedVariant: _$AppColors.onSecondaryFixedVariant[1],
    onSurface: _$AppColors.onSurface[1],
    onSurfaceVariant: _$AppColors.onSurfaceVariant[1],
    onTertiary: _$AppColors.onTertiary[1],
    onTertiaryContainer: _$AppColors.onTertiaryContainer[1],
    onTertiaryFixed: _$AppColors.onTertiaryFixed[1],
    onTertiaryFixedVariant: _$AppColors.onTertiaryFixedVariant[1],
    outline: _$AppColors.outline[1],
    outlineVariant: _$AppColors.outlineVariant[1],
    primary: _$AppColors.primary[1],
    primaryContainer: _$AppColors.primaryContainer[1],
    primaryFixed: _$AppColors.primaryFixed[1],
    primaryFixedDim: _$AppColors.primaryFixedDim[1],
    scrim: _$AppColors.scrim[1],
    secondary: _$AppColors.secondary[1],
    secondaryContainer: _$AppColors.secondaryContainer[1],
    secondaryFixed: _$AppColors.secondaryFixed[1],
    secondaryFixedDim: _$AppColors.secondaryFixedDim[1],
    shadow: _$AppColors.shadow[1],
    snackbarBackground: _$AppColors.snackbarBackground[1],
    snackbarText: _$AppColors.snackbarText[1],
    success: _$AppColors.success[1],
    surface: _$AppColors.surface[1],
    surfaceBright: _$AppColors.surfaceBright[1],
    surfaceContainer: _$AppColors.surfaceContainer[1],
    surfaceContainerHigh: _$AppColors.surfaceContainerHigh[1],
    surfaceContainerHighest: _$AppColors.surfaceContainerHighest[1],
    surfaceContainerLow: _$AppColors.surfaceContainerLow[1],
    surfaceContainerLowest: _$AppColors.surfaceContainerLowest[1],
    surfaceDim: _$AppColors.surfaceDim[1],
    surfaceVariant: _$AppColors.surfaceVariant[1],
    tertiary: _$AppColors.tertiary[1],
    tertiaryContainer: _$AppColors.tertiaryContainer[1],
    tertiaryFixed: _$AppColors.tertiaryFixed[1],
    tertiaryFixedDim: _$AppColors.tertiaryFixedDim[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppColors copyWith({
    Color? background,
    Color? divider,
    Color? error,
    Color? errorContainer,
    Color? inverseOnSurface,
    Color? inversePrimary,
    Color? inverseSurface,
    Color? onBackground,
    Color? onError,
    Color? onErrorContainer,
    Color? onPrimary,
    Color? onPrimaryContainer,
    Color? onPrimaryFixed,
    Color? onPrimaryFixedVariant,
    Color? onSecondary,
    Color? onSecondaryContainer,
    Color? onSecondaryFixed,
    Color? onSecondaryFixedVariant,
    Color? onSurface,
    Color? onSurfaceVariant,
    Color? onTertiary,
    Color? onTertiaryContainer,
    Color? onTertiaryFixed,
    Color? onTertiaryFixedVariant,
    Color? outline,
    Color? outlineVariant,
    Color? primary,
    Color? primaryContainer,
    Color? primaryFixed,
    Color? primaryFixedDim,
    Color? scrim,
    Color? secondary,
    Color? secondaryContainer,
    Color? secondaryFixed,
    Color? secondaryFixedDim,
    Color? shadow,
    Color? snackbarBackground,
    Color? snackbarText,
    Color? success,
    Color? surface,
    Color? surfaceBright,
    Color? surfaceContainer,
    Color? surfaceContainerHigh,
    Color? surfaceContainerHighest,
    Color? surfaceContainerLow,
    Color? surfaceContainerLowest,
    Color? surfaceDim,
    Color? surfaceVariant,
    Color? tertiary,
    Color? tertiaryContainer,
    Color? tertiaryFixed,
    Color? tertiaryFixedDim,
  }) {
    return AppColors(
      background: background ?? this.background,
      divider: divider ?? this.divider,
      error: error ?? this.error,
      errorContainer: errorContainer ?? this.errorContainer,
      inverseOnSurface: inverseOnSurface ?? this.inverseOnSurface,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      inverseSurface: inverseSurface ?? this.inverseSurface,
      onBackground: onBackground ?? this.onBackground,
      onError: onError ?? this.onError,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      onPrimaryFixed: onPrimaryFixed ?? this.onPrimaryFixed,
      onPrimaryFixedVariant:
          onPrimaryFixedVariant ?? this.onPrimaryFixedVariant,
      onSecondary: onSecondary ?? this.onSecondary,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      onSecondaryFixed: onSecondaryFixed ?? this.onSecondaryFixed,
      onSecondaryFixedVariant:
          onSecondaryFixedVariant ?? this.onSecondaryFixedVariant,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      onTertiary: onTertiary ?? this.onTertiary,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      onTertiaryFixed: onTertiaryFixed ?? this.onTertiaryFixed,
      onTertiaryFixedVariant:
          onTertiaryFixedVariant ?? this.onTertiaryFixedVariant,
      outline: outline ?? this.outline,
      outlineVariant: outlineVariant ?? this.outlineVariant,
      primary: primary ?? this.primary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      primaryFixed: primaryFixed ?? this.primaryFixed,
      primaryFixedDim: primaryFixedDim ?? this.primaryFixedDim,
      scrim: scrim ?? this.scrim,
      secondary: secondary ?? this.secondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      secondaryFixed: secondaryFixed ?? this.secondaryFixed,
      secondaryFixedDim: secondaryFixedDim ?? this.secondaryFixedDim,
      shadow: shadow ?? this.shadow,
      snackbarBackground: snackbarBackground ?? this.snackbarBackground,
      snackbarText: snackbarText ?? this.snackbarText,
      success: success ?? this.success,
      surface: surface ?? this.surface,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest:
          surfaceContainerHighest ?? this.surfaceContainerHighest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      tertiary: tertiary ?? this.tertiary,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      tertiaryFixed: tertiaryFixed ?? this.tertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim ?? this.tertiaryFixedDim,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      inverseOnSurface:
          Color.lerp(inverseOnSurface, other.inverseOnSurface, t)!,
      inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
      inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      onErrorContainer:
          Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      onPrimaryFixed: Color.lerp(onPrimaryFixed, other.onPrimaryFixed, t)!,
      onPrimaryFixedVariant:
          Color.lerp(onPrimaryFixedVariant, other.onPrimaryFixedVariant, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      onSecondaryFixed:
          Color.lerp(onSecondaryFixed, other.onSecondaryFixed, t)!,
      onSecondaryFixedVariant: Color.lerp(
          onSecondaryFixedVariant, other.onSecondaryFixedVariant, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      onTertiaryContainer:
          Color.lerp(onTertiaryContainer, other.onTertiaryContainer, t)!,
      onTertiaryFixed: Color.lerp(onTertiaryFixed, other.onTertiaryFixed, t)!,
      onTertiaryFixedVariant:
          Color.lerp(onTertiaryFixedVariant, other.onTertiaryFixedVariant, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      primaryFixed: Color.lerp(primaryFixed, other.primaryFixed, t)!,
      primaryFixedDim: Color.lerp(primaryFixedDim, other.primaryFixedDim, t)!,
      scrim: Color.lerp(scrim, other.scrim, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      secondaryFixed: Color.lerp(secondaryFixed, other.secondaryFixed, t)!,
      secondaryFixedDim:
          Color.lerp(secondaryFixedDim, other.secondaryFixedDim, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      snackbarBackground:
          Color.lerp(snackbarBackground, other.snackbarBackground, t)!,
      snackbarText: Color.lerp(snackbarText, other.snackbarText, t)!,
      success: Color.lerp(success, other.success, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      surfaceContainerHigh:
          Color.lerp(surfaceContainerHigh, other.surfaceContainerHigh, t)!,
      surfaceContainerHighest: Color.lerp(
          surfaceContainerHighest, other.surfaceContainerHighest, t)!,
      surfaceContainerLow:
          Color.lerp(surfaceContainerLow, other.surfaceContainerLow, t)!,
      surfaceContainerLowest:
          Color.lerp(surfaceContainerLowest, other.surfaceContainerLowest, t)!,
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceVariant: Color.lerp(surfaceVariant, other.surfaceVariant, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      tertiaryContainer:
          Color.lerp(tertiaryContainer, other.tertiaryContainer, t)!,
      tertiaryFixed: Color.lerp(tertiaryFixed, other.tertiaryFixed, t)!,
      tertiaryFixedDim:
          Color.lerp(tertiaryFixedDim, other.tertiaryFixedDim, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(divider, other.divider) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality()
                .equals(errorContainer, other.errorContainer) &&
            const DeepCollectionEquality()
                .equals(inverseOnSurface, other.inverseOnSurface) &&
            const DeepCollectionEquality()
                .equals(inversePrimary, other.inversePrimary) &&
            const DeepCollectionEquality()
                .equals(inverseSurface, other.inverseSurface) &&
            const DeepCollectionEquality()
                .equals(onBackground, other.onBackground) &&
            const DeepCollectionEquality().equals(onError, other.onError) &&
            const DeepCollectionEquality()
                .equals(onErrorContainer, other.onErrorContainer) &&
            const DeepCollectionEquality().equals(onPrimary, other.onPrimary) &&
            const DeepCollectionEquality()
                .equals(onPrimaryContainer, other.onPrimaryContainer) &&
            const DeepCollectionEquality()
                .equals(onPrimaryFixed, other.onPrimaryFixed) &&
            const DeepCollectionEquality()
                .equals(onPrimaryFixedVariant, other.onPrimaryFixedVariant) &&
            const DeepCollectionEquality()
                .equals(onSecondary, other.onSecondary) &&
            const DeepCollectionEquality()
                .equals(onSecondaryContainer, other.onSecondaryContainer) &&
            const DeepCollectionEquality()
                .equals(onSecondaryFixed, other.onSecondaryFixed) &&
            const DeepCollectionEquality().equals(
                onSecondaryFixedVariant, other.onSecondaryFixedVariant) &&
            const DeepCollectionEquality().equals(onSurface, other.onSurface) &&
            const DeepCollectionEquality()
                .equals(onSurfaceVariant, other.onSurfaceVariant) &&
            const DeepCollectionEquality()
                .equals(onTertiary, other.onTertiary) &&
            const DeepCollectionEquality()
                .equals(onTertiaryContainer, other.onTertiaryContainer) &&
            const DeepCollectionEquality()
                .equals(onTertiaryFixed, other.onTertiaryFixed) &&
            const DeepCollectionEquality()
                .equals(onTertiaryFixedVariant, other.onTertiaryFixedVariant) &&
            const DeepCollectionEquality().equals(outline, other.outline) &&
            const DeepCollectionEquality()
                .equals(outlineVariant, other.outlineVariant) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(primaryContainer, other.primaryContainer) &&
            const DeepCollectionEquality()
                .equals(primaryFixed, other.primaryFixed) &&
            const DeepCollectionEquality()
                .equals(primaryFixedDim, other.primaryFixedDim) &&
            const DeepCollectionEquality().equals(scrim, other.scrim) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality()
                .equals(secondaryContainer, other.secondaryContainer) &&
            const DeepCollectionEquality()
                .equals(secondaryFixed, other.secondaryFixed) &&
            const DeepCollectionEquality()
                .equals(secondaryFixedDim, other.secondaryFixedDim) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality()
                .equals(snackbarBackground, other.snackbarBackground) &&
            const DeepCollectionEquality()
                .equals(snackbarText, other.snackbarText) &&
            const DeepCollectionEquality().equals(success, other.success) &&
            const DeepCollectionEquality().equals(surface, other.surface) &&
            const DeepCollectionEquality()
                .equals(surfaceBright, other.surfaceBright) &&
            const DeepCollectionEquality()
                .equals(surfaceContainer, other.surfaceContainer) &&
            const DeepCollectionEquality()
                .equals(surfaceContainerHigh, other.surfaceContainerHigh) &&
            const DeepCollectionEquality().equals(
                surfaceContainerHighest, other.surfaceContainerHighest) &&
            const DeepCollectionEquality()
                .equals(surfaceContainerLow, other.surfaceContainerLow) &&
            const DeepCollectionEquality()
                .equals(surfaceContainerLowest, other.surfaceContainerLowest) &&
            const DeepCollectionEquality()
                .equals(surfaceDim, other.surfaceDim) &&
            const DeepCollectionEquality()
                .equals(surfaceVariant, other.surfaceVariant) &&
            const DeepCollectionEquality().equals(tertiary, other.tertiary) &&
            const DeepCollectionEquality()
                .equals(tertiaryContainer, other.tertiaryContainer) &&
            const DeepCollectionEquality()
                .equals(tertiaryFixed, other.tertiaryFixed) &&
            const DeepCollectionEquality()
                .equals(tertiaryFixedDim, other.tertiaryFixedDim));
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(divider),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errorContainer),
      const DeepCollectionEquality().hash(inverseOnSurface),
      const DeepCollectionEquality().hash(inversePrimary),
      const DeepCollectionEquality().hash(inverseSurface),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(onError),
      const DeepCollectionEquality().hash(onErrorContainer),
      const DeepCollectionEquality().hash(onPrimary),
      const DeepCollectionEquality().hash(onPrimaryContainer),
      const DeepCollectionEquality().hash(onPrimaryFixed),
      const DeepCollectionEquality().hash(onPrimaryFixedVariant),
      const DeepCollectionEquality().hash(onSecondary),
      const DeepCollectionEquality().hash(onSecondaryContainer),
      const DeepCollectionEquality().hash(onSecondaryFixed),
      const DeepCollectionEquality().hash(onSecondaryFixedVariant),
      const DeepCollectionEquality().hash(onSurface),
      const DeepCollectionEquality().hash(onSurfaceVariant),
      const DeepCollectionEquality().hash(onTertiary),
      const DeepCollectionEquality().hash(onTertiaryContainer),
      const DeepCollectionEquality().hash(onTertiaryFixed),
      const DeepCollectionEquality().hash(onTertiaryFixedVariant),
      const DeepCollectionEquality().hash(outline),
      const DeepCollectionEquality().hash(outlineVariant),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryContainer),
      const DeepCollectionEquality().hash(primaryFixed),
      const DeepCollectionEquality().hash(primaryFixedDim),
      const DeepCollectionEquality().hash(scrim),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(secondaryContainer),
      const DeepCollectionEquality().hash(secondaryFixed),
      const DeepCollectionEquality().hash(secondaryFixedDim),
      const DeepCollectionEquality().hash(shadow),
      const DeepCollectionEquality().hash(snackbarBackground),
      const DeepCollectionEquality().hash(snackbarText),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(surface),
      const DeepCollectionEquality().hash(surfaceBright),
      const DeepCollectionEquality().hash(surfaceContainer),
      const DeepCollectionEquality().hash(surfaceContainerHigh),
      const DeepCollectionEquality().hash(surfaceContainerHighest),
      const DeepCollectionEquality().hash(surfaceContainerLow),
      const DeepCollectionEquality().hash(surfaceContainerLowest),
      const DeepCollectionEquality().hash(surfaceDim),
      const DeepCollectionEquality().hash(surfaceVariant),
      const DeepCollectionEquality().hash(tertiary),
      const DeepCollectionEquality().hash(tertiaryContainer),
      const DeepCollectionEquality().hash(tertiaryFixed),
      const DeepCollectionEquality().hash(tertiaryFixedDim),
    ]);
  }
}

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.body,
    required this.button,
    required this.headline,
    required this.label,
    required this.link,
    required this.title,
  });

  final TextStyle body;
  final TextStyle button;
  final TextStyle headline;
  final TextStyle label;
  final TextStyle link;
  final TextStyle title;

  static final AppTextStyles light = AppTextStyles(
    body: _$AppTextStyles.body[0],
    button: _$AppTextStyles.button[0],
    headline: _$AppTextStyles.headline[0],
    label: _$AppTextStyles.label[0],
    link: _$AppTextStyles.link[0],
    title: _$AppTextStyles.title[0],
  );

  static final AppTextStyles dark = AppTextStyles(
    body: _$AppTextStyles.body[1],
    button: _$AppTextStyles.button[1],
    headline: _$AppTextStyles.headline[1],
    label: _$AppTextStyles.label[1],
    link: _$AppTextStyles.link[1],
    title: _$AppTextStyles.title[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? body,
    TextStyle? button,
    TextStyle? headline,
    TextStyle? label,
    TextStyle? link,
    TextStyle? title,
  }) {
    return AppTextStyles(
      body: body ?? this.body,
      button: button ?? this.button,
      headline: headline ?? this.headline,
      label: label ?? this.label,
      link: link ?? this.link,
      title: title ?? this.title,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      body: TextStyle.lerp(body, other.body, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      link: TextStyle.lerp(link, other.link, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality().equals(button, other.button) &&
            const DeepCollectionEquality().equals(headline, other.headline) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality().equals(link, other.link) &&
            const DeepCollectionEquality().equals(title, other.title));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(button),
      const DeepCollectionEquality().hash(headline),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(title),
    );
  }
}
