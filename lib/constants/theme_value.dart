// flutter
import 'package:flutter/material.dart';
// types
import 'package:app/types/base_theme.dart';
import 'package:app/types/sizes.dart';
import 'package:app/types/font_families.dart';

class ThemeValue {
  // Base palette

  static const _fontPrimary = 0xFF000000;
  get font => const MaterialColor(_fontPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_fontPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _bgPrimary = 0xFFFFFFFF;
  get bg => const MaterialColor(_bgPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_bgPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  // Primary palette

  static const _primaryPrimary = 0xFF0000FF;
  get primary => const MaterialColor(_primaryPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_primaryPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _secondaryPrimary = 0xFF000000;
  get secondary => const MaterialColor(_secondaryPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_secondaryPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _accentPrimary = 0xFF000000;
  get accent => const MaterialColor(_accentPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_accentPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  // Utilities palette

  static const _infoPrimary = 0xFF000000;
  get info => const MaterialColor(_infoPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_infoPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _successPrimary = 0xFF000000;
  get success => const MaterialColor(_successPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_successPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _warningPrimary = 0xFF000000;
  get warning => const MaterialColor(_warningPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_warningPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  static const _dangerPrimary = 0xFF000000;
  get danger => const MaterialColor(_dangerPrimary, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFFFFFFFF),
        400: Color(0xFFFFFFFF),
        500: Color(_dangerPrimary),
        600: Color(0xFFFFFFFF),
        700: Color(0xFFFFFFFF),
        800: Color(0xFFFFFFFF),
        900: Color(0xFFFFFFFF),
      });

  // Sizes
  get line => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get text => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get border => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get rounded => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get space => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get split => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get element => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get component => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  get view => {
        Sizes.xxxs: 1.0,
        Sizes.xxs: 1.0,
        Sizes.xs: 1.0,
        Sizes.sm: 1.0,
        Sizes.md: 1.0,
        Sizes.lg: 1.0,
        Sizes.xl: 1.0,
        Sizes.xxl: 1.0,
        Sizes.xxxl: 1.0,
      };

  // Fonts

  get fontFamily => {
        FontFamilies.main: 'Montserrat',
        FontFamilies.number: 'Roboto',
      };

  // Base theme
  BaseTheme get baseTheme => BaseTheme(
        // Base palette
        font: font,
        bg: bg,
        // Primary palette
        primary: primary,
        secondary: secondary,
        accent: accent,
        // Utilities palette
        info: info,
        success: success,
        warning: warning,
        danger: danger,
        // Sizes
        line: line,
        text: text,
        border: border,
        rounded: rounded,
        space: space,
        split: split,
        element: element,
        component: component,
        view: view,
        // Fonts
        fontFamily: fontFamily,
      );

  // Dark theme
  ThemeExtension get darkTheme => baseTheme.copyWith(font: bg, bg: font);
}
