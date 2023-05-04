// flutter
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/langs.dart';
// configs
import 'package:app/configs/settings_config.dart';

class SettingsView extends StatelessWidget {
  final SettingsConfig config;

  const SettingsView({super.key, required this.config});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Langs.of(context)!.custom("sbsys")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButton<ThemeMode>(
              value: config.themeMode,
              onChanged: config.updateThemeMode,
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text('System Theme'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text('Light Theme'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text('Dark Theme'),
                )
              ],
            ),
            DropdownButton<String>(
              value: config.language?.languageCode ?? 'system',
              onChanged: config.updateLanguage,
              items: const [
                DropdownMenuItem(
                  value: 'system',
                  child: Text('System Language'),
                ),
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'es',
                  child: Text('Español'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
