// flutter
import 'package:flutter/material.dart';
// services
import 'package:app/shared/services/settings_service.dart';
// constants
import 'package:app/shared/constants/theme_value.dart';

class SettingsConfig with ChangeNotifier {
  final SettingsService _settingsService;

  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;

  late Locale? _language;
  Locale? get language => _language;

  ThemeValue get theme => ThemeValue();

  SettingsConfig(this._settingsService);

  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();
    _language = await _settingsService.language();

    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;

    _themeMode = newThemeMode;

    notifyListeners();

    await _settingsService.updateThemeMode(newThemeMode);
  }

  Future<void> updateLanguage(String? newLanguage) async {
    if (newLanguage == null) return;
    if (newLanguage == _language?.languageCode) return;

    _language = Locale(newLanguage);

    notifyListeners();

    await _settingsService.updateLanguage(newLanguage);
  }
}
