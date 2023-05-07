// flutter
import 'package:flutter/material.dart';

// Theme color definition

enum ThemeColor {
  font,
  bg,
  primary,
  secondary,
  accent,
  info,
  success,
  warning,
  danger,
}

class ThemeColored {
  final Map<ThemeColor, MaterialColor> _swatch;

  ThemeColored(this._swatch);

  MaterialColor? operator [](ThemeColor index) => _swatch[index];

  MaterialColor get font => this[ThemeColor.font]!;
  MaterialColor get bg => this[ThemeColor.bg]!;
  MaterialColor get primary => this[ThemeColor.primary]!;
  MaterialColor get secondary => this[ThemeColor.secondary]!;
  MaterialColor get accent => this[ThemeColor.accent]!;
  MaterialColor get info => this[ThemeColor.info]!;
  MaterialColor get success => this[ThemeColor.success]!;
  MaterialColor get warning => this[ThemeColor.warning]!;
  MaterialColor get danger => this[ThemeColor.danger]!;

  ThemeColored copyWith({
    MaterialColor? font,
    MaterialColor? bg,
    MaterialColor? primary,
    MaterialColor? secondary,
    MaterialColor? accent,
    MaterialColor? info,
    MaterialColor? success,
    MaterialColor? warning,
    MaterialColor? danger,
  }) {
    return ThemeColored({
      ThemeColor.font: font ?? this.font,
      ThemeColor.bg: bg ?? this.bg,
      ThemeColor.primary: primary ?? this.primary,
      ThemeColor.secondary: secondary ?? this.secondary,
      ThemeColor.accent: accent ?? this.accent,
      ThemeColor.info: info ?? this.info,
      ThemeColor.success: success ?? this.success,
      ThemeColor.warning: warning ?? this.warning,
      ThemeColor.danger: danger ?? this.danger,
    });
  }
}

// Theme size definition

enum Size {
  none,
  xs6,
  xs5,
  xs4,
  xs3,
  xs2,
  xs,
  sm,
  md,
  lg,
  xl,
  xl2,
  xl3,
  xl4,
  xl5,
  xl6,
}

class Sized {
  final Map<Size, double> _swatch;

  Sized(this._swatch);

  double? operator [](Size index) => _swatch[index];

  double get none => this[Size.none]!;
  double get xs6 => this[Size.xs6]!;
  double get xs5 => this[Size.xs5]!;
  double get xs4 => this[Size.xs4]!;
  double get xs3 => this[Size.xs3]!;
  double get xs2 => this[Size.xs2]!;
  double get xs => this[Size.xs]!;
  double get sm => this[Size.sm]!;
  double get md => this[Size.md]!;
  double get lg => this[Size.lg]!;
  double get xl => this[Size.xl]!;
  double get xl2 => this[Size.xl2]!;
  double get xl3 => this[Size.xl3]!;
  double get xl4 => this[Size.xl4]!;
  double get xl5 => this[Size.xl5]!;
  double get xl6 => this[Size.xl6]!;

  Sized copyWith({
    double? none,
    double? xs6,
    double? xs5,
    double? xs4,
    double? xs3,
    double? xs2,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xl2,
    double? xl3,
    double? xl4,
    double? xl5,
    double? xl6,
  }) {
    return Sized({
      Size.none: none ?? this.none,
      Size.xs6: xs6 ?? this.xs6,
      Size.xs5: xs5 ?? this.xs5,
      Size.xs4: xs4 ?? this.xs4,
      Size.xs3: xs3 ?? this.xs3,
      Size.xs2: xs2 ?? this.xs2,
      Size.xs: xs ?? this.xs,
      Size.sm: sm ?? this.sm,
      Size.md: md ?? this.md,
      Size.lg: lg ?? this.lg,
      Size.xl: xl ?? this.xl,
      Size.xl2: xl2 ?? this.xl2,
      Size.xl3: xl3 ?? this.xl3,
      Size.xl4: xl4 ?? this.xl4,
      Size.xl5: xl5 ?? this.xl5,
      Size.xl6: xl6 ?? this.xl6,
    });
  }
}

enum ThemeSize {
  line,
  text,
  border,
  rounded,
  space,
  split,
  element,
  component,
  view,
  screen,
}

class ThemeSized {
  final Map<ThemeSize, Sized> _swatch;

  ThemeSized(this._swatch);

  Sized? operator [](ThemeSize index) => _swatch[index];

  Sized get line => this[ThemeSize.line]!;
  Sized get text => this[ThemeSize.text]!;
  Sized get border => this[ThemeSize.border]!;
  Sized get rounded => this[ThemeSize.rounded]!;
  Sized get space => this[ThemeSize.space]!;
  Sized get split => this[ThemeSize.split]!;
  Sized get element => this[ThemeSize.element]!;
  Sized get component => this[ThemeSize.component]!;
  Sized get view => this[ThemeSize.view]!;
  Sized get screen => this[ThemeSize.screen]!;

  ThemeSized copyWith({
    Sized? line,
    Sized? text,
    Sized? border,
    Sized? rounded,
    Sized? space,
    Sized? split,
    Sized? element,
    Sized? component,
    Sized? view,
    Sized? screen,
  }) {
    return ThemeSized({
      ThemeSize.line: line ?? this.line,
      ThemeSize.text: text ?? this.text,
      ThemeSize.border: border ?? this.border,
      ThemeSize.rounded: rounded ?? this.rounded,
      ThemeSize.space: space ?? this.space,
      ThemeSize.split: split ?? this.split,
      ThemeSize.element: element ?? this.element,
      ThemeSize.component: component ?? this.component,
      ThemeSize.view: view ?? this.view,
      ThemeSize.screen: screen ?? this.screen,
    });
  }
}

// Theme font family definition

enum FontFamily { main, number }

class ThemeFontFamily {
  final Map<FontFamily, String> _swatch;

  ThemeFontFamily(this._swatch);

  String? operator [](FontFamily index) => _swatch[index];

  String get main => this[FontFamily.main]!;
  String get number => this[FontFamily.number]!;

  ThemeFontFamily copyWith({
    String? main,
    String? number,
  }) {
    return ThemeFontFamily({
      FontFamily.main: main ?? this.main,
      FontFamily.number: number ?? this.number,
    });
  }
}

// Theme definition

class ThemeDef {
  final ThemeColored colors;
  final ThemeSized sizes;
  final ThemeFontFamily fontFamily;

  ThemeDef({
    required this.colors,
    required this.sizes,
    required this.fontFamily,
  });
}

// Application theme definition

enum ThemeAllowed { light, dark }

class AppTheme extends ThemeExtension<AppTheme> {
  final ThemeAllowed _current;
  final Map<ThemeAllowed, ThemeDef> _swatch;

  AppTheme(this._current, this._swatch);

  ThemeDef? operator [](ThemeAllowed index) => _swatch[index];

  ThemeAllowed get currentTheme => _current;
  ThemeDef get current => this[_current]!;

  ThemeDef get light => this[ThemeAllowed.light]!;
  ThemeDef get dark => this[ThemeAllowed.dark]!;

  @override
  AppTheme copyWith({
    ThemeAllowed? currentTheme,
    ThemeDef? light,
    ThemeDef? dark,
  }) {
    if (currentTheme == null || currentTheme == _current) return this;

    return AppTheme(currentTheme, {
      ThemeAllowed.light: light ?? this.light,
      ThemeAllowed.dark: dark ?? this.dark,
    });
  }

  @override
  ThemeExtension<AppTheme> lerp(other, t) {
    return this;
  }
}
