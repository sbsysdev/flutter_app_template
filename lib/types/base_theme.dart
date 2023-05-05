// flutter
import 'package:flutter/material.dart';
// types
import 'package:app/types/sizes.dart';
import 'package:app/types/font_families.dart';

class BaseTheme extends ThemeExtension<BaseTheme> {
  // Base palette
  final MaterialColor font;
  final MaterialColor bg;

  // Primary palette
  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor accent;

  // Utilities palette
  final MaterialColor info;
  final MaterialColor success;
  final MaterialColor warning;
  final MaterialColor danger;

  // Sizes
  final Map<Sizes, double> line;
  final Map<Sizes, double> text;
  final Map<Sizes, double> border;
  final Map<Sizes, double> rounded;
  final Map<Sizes, double> space;
  final Map<Sizes, double> split;
  final Map<Sizes, double> element;
  final Map<Sizes, double> component;
  final Map<Sizes, double> view;

  // Fonts
  final Map<FontFamilies, String> fontFamily;

  BaseTheme({
    // Base palette
    required this.font,
    required this.bg,
    // Primary palette
    required this.primary,
    required this.secondary,
    required this.accent,
    // Utilities palette
    required this.info,
    required this.success,
    required this.warning,
    required this.danger,
    // Sizes
    required this.line,
    required this.text,
    required this.border,
    required this.rounded,
    required this.space,
    required this.split,
    required this.element,
    required this.component,
    required this.view,
    // Fonts
    required this.fontFamily,
  });

  @override
  ThemeExtension<BaseTheme> copyWith({
    // Base palette
    MaterialColor? font,
    MaterialColor? bg,
    // Primary palette
    MaterialColor? primary,
    MaterialColor? secondary,
    MaterialColor? accent,
    // Utilities palette
    MaterialColor? info,
    MaterialColor? success,
    MaterialColor? warning,
    MaterialColor? danger,
    // Sizes
    Map<Sizes, double>? line,
    Map<Sizes, double>? text,
    Map<Sizes, double>? border,
    Map<Sizes, double>? rounded,
    Map<Sizes, double>? space,
    Map<Sizes, double>? split,
    Map<Sizes, double>? element,
    Map<Sizes, double>? component,
    Map<Sizes, double>? view,
    // Fonts
    Map<FontFamilies, String>? fontFamily,
  }) {
    return BaseTheme(
      // Base palette
      font: font ?? this.font,
      bg: bg ?? this.bg,
      // Primary palette
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      accent: accent ?? this.accent,
      // Utilities palette
      info: info ?? this.info,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      // Sizes
      line: line ?? this.line,
      text: text ?? this.text,
      border: border ?? this.border,
      rounded: rounded ?? this.rounded,
      space: space ?? this.space,
      split: split ?? this.split,
      element: element ?? this.element,
      component: component ?? this.component,
      view: view ?? this.view,
      // Fonts
      fontFamily: fontFamily ?? this.fontFamily,
    );
  }

  @override
  ThemeExtension<BaseTheme> lerp(other, t) {
    return this;
    /* if (other is! BaseTheme) {
      return this;
    }
    return BaseTheme(
      font: MaterialColor(Color.lerp(font, other.font, t)!.value, <int, Color>{
        50: Color.lerp(font[50], other.font[50], t)!,
        100: Color.lerp(font[100], other.font[100], t)!,
        200: Color.lerp(font[200], other.font[200], t)!,
        300: Color.lerp(font[300], other.font[300], t)!,
        400: Color.lerp(font[400], other.font[400], t)!,
        500: Color.lerp(font[500], other.font[500], t)!,
        600: Color.lerp(font[600], other.font[600], t)!,
        700: Color.lerp(font[700], other.font[700], t)!,
        800: Color.lerp(font[800], other.font[800], t)!,
        900: Color.lerp(font[900], other.font[900], t)!,
      }),
    ); */
  }
}
