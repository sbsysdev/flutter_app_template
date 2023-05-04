// flutter
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  Future<ThemeMode> themeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return ThemeMode.values[prefs.getInt('theme') ?? ThemeMode.system.index];
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt('theme', theme.index);
  }

  Future<Locale> language() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? lang = prefs.getString('lang');

    return Locale(lang ?? 'system');
  }

  Future<void> updateLanguage(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('lang', lang);
  }
}
