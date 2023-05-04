// flutter
import 'package:app/configs/settings_config.dart';
import 'package:app/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
// views
import 'package:app/views/home/home_view.dart';

class RoutesConfig {
  Route<dynamic> configure(RouteSettings settings, SettingsConfig config) =>
      MaterialPageRoute(
        builder: (context) {
          switch (settings.name) {
            case SettingsView.routeName:
              return SettingsView(config: config);
            case HomeView.routeName:
            default:
              return const HomeView();
          }
        },
      );
}
