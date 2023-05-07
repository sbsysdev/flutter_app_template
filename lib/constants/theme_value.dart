// flutter
import 'package:flutter/material.dart';
// types
import 'package:app/types/theme.dart';

class ThemeValue {
  // Colors

  static const int _fontPrimary = 0xFF161616;
  static const MaterialColor _font = MaterialColor(_fontPrimary, {
    50: Color(0xFFeeeeee),
    100: Color(0xFFcdcdcd),
    200: Color(0xFF8b8b8b),
    300: Color(0xFF7a7a7a),
    400: Color(0xFF595959),
    500: Color(0xFF494949),
    600: Color(0xFF383838),
    700: Color(0xFF282828),
    800: Color(_fontPrimary),
    900: Color(0xFF000000),
  });

  static const int _bgPrimary = 0xFFf8f8f8;
  static const MaterialColor _bg = MaterialColor(_bgPrimary, {
    50: Color(0xFFffffff),
    100: Color(_bgPrimary),
    200: Color(0xFFeeeeee),
    300: Color(0xFFe5e5e5),
    400: Color(0xFFe0e0e0),
    500: Color(0xFFc0c0c0),
    600: Color(0xFF909090),
    700: Color(0xFF848484),
    800: Color(0xFF666666),
    900: Color(0xFF4c4c4c),
  });

  static const int _primaryPrimary = 0xFF3895d8;
  static const MaterialColor _primary = MaterialColor(_primaryPrimary, {
    50: Color(0xFFb8d9f1),
    100: Color(0xFF8dc2e8),
    200: Color(0xFF7ebbe6),
    300: Color(0xFF70b3e3),
    400: Color(0xFF53a4dd),
    500: Color(_primaryPrimary),
    600: Color(0xFF2681c1),
    700: Color(0xFF206ba1),
    800: Color(0xFF1d6191),
    900: Color(0xFF195681),
  });

  static const int _secondaryPrimary = 0xFFfa5514;
  static const MaterialColor _secondary = MaterialColor(_secondaryPrimary, {
    50: Color(0xFFfdcbb7),
    100: Color(0xFFfca380),
    200: Color(0xFFfa7c4a),
    300: Color(0xFFfa6f38),
    400: Color(0xFFfa5514),
    500: Color(_secondaryPrimary),
    600: Color(0xFFf54a06),
    700: Color(0xFFe24406),
    800: Color(0xFFd13f05),
    900: Color(0xFFbf3a05),
  });

  static const int _accentPrimary = 0xFFFFFFFF;
  static const MaterialColor _accent = MaterialColor(_accentPrimary, {
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

  static const int _infoPrimary = 0xFFFFFFFF;
  static const MaterialColor _info = MaterialColor(_infoPrimary, {
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

  static const int _successPrimary = 0xFFFFFFFF;
  static const MaterialColor _success = MaterialColor(_successPrimary, {
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

  static const int _warningPrimary = 0xFFFFFFFF;
  static const MaterialColor _warning = MaterialColor(_warningPrimary, {
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

  static const int _dangerPrimary = 0xFFFFFFFF;
  static const MaterialColor _danger = MaterialColor(_dangerPrimary, {
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

  ThemeColored get _lightColors => ThemeColored({
        ThemeColor.font: _font,
        ThemeColor.bg: _bg,
        ThemeColor.primary: _primary,
        ThemeColor.secondary: _secondary,
        ThemeColor.accent: _accent,
        ThemeColor.info: _info,
        ThemeColor.success: _success,
        ThemeColor.warning: _warning,
        ThemeColor.danger: _danger,
      });
  ThemeColored get _darkColors => _lightColors.copyWith(
        font: _bg,
        bg: _font,
      );

  // Sizes

  Sized get _line => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _text => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _border => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _rounded => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _space => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _split => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _element => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _component => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _view => Sized({
        Size.none: 1.0,
        Size.xs6: 1.0,
        Size.xs5: 1.0,
        Size.xs4: 1.0,
        Size.xs3: 1.0,
        Size.xs2: 1.0,
        Size.xs: 1.0,
        Size.sm: 1.0,
        Size.md: 1.0,
        Size.lg: 1.0,
        Size.xl: 1.0,
        Size.xl2: 1.0,
        Size.xl3: 1.0,
        Size.xl4: 1.0,
        Size.xl5: 1.0,
        Size.xl6: 1.0,
      });

  Sized get _screen => Sized({
        Size.none: 0.0,
        Size.xs6: 320.0,
        Size.xs5: 384.0,
        Size.xs4: 448.0,
        Size.xs3: 512.0,
        Size.xs2: 576.0,
        Size.xs: 640.0,
        Size.sm: 704.0,
        Size.md: 768.0,
        Size.lg: 896.0,
        Size.xl: 1024.0,
        Size.xl2: 1152.0,
        Size.xl3: 1280.0,
        Size.xl4: 1408.0,
        Size.xl5: 1536.0,
        Size.xl6: 1664.0,
      });

  ThemeSized get _sizes => ThemeSized({
        ThemeSize.line: _line,
        ThemeSize.text: _text,
        ThemeSize.border: _border,
        ThemeSize.rounded: _rounded,
        ThemeSize.space: _space,
        ThemeSize.split: _split,
        ThemeSize.element: _element,
        ThemeSize.component: _component,
        ThemeSize.view: _view,
        ThemeSize.screen: _screen,
      });

  // Font family

  ThemeFontFamily get _fontFamily => ThemeFontFamily({
        FontFamily.main: 'Montserrat',
        FontFamily.number: 'Roboto',
      });

  // Theme definition

  ThemeDef get _lightDef => ThemeDef(
        colors: _lightColors,
        sizes: _sizes,
        fontFamily: _fontFamily,
      );

  ThemeDef get _darkDef => ThemeDef(
        colors: _darkColors,
        sizes: _sizes,
        fontFamily: _fontFamily,
      );

  // App theme

  AppTheme get lightTheme => AppTheme(
        ThemeAllowed.light,
        {
          ThemeAllowed.light: _lightDef,
          ThemeAllowed.dark: _darkDef,
        },
      );

  AppTheme get darkTheme => lightTheme.copyWith(
        currentTheme: ThemeAllowed.dark,
      );
}
