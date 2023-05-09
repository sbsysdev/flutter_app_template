// flutter
import 'package:flutter/material.dart';
// services
import 'package:app/shared/services/settings_service.dart';
// configs
import 'package:app/configs/settings_config.dart';
// app
import 'package:app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final settingsConfig = SettingsConfig(SettingsService());
  await settingsConfig.loadSettings();

  runApp(App(settingsConfig: settingsConfig));
}
