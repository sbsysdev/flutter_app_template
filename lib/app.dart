// flutter
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/langs.dart';
// configs
import 'package:app/configs/settings_config.dart';
import 'package:app/configs/routes_config.dart';
// types
import 'package:app/types/font_families.dart';

class App extends StatelessWidget {
  final SettingsConfig settingsConfig;

  const App({super.key, required this.settingsConfig});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsConfig,
      builder: (context, __) {
        return MaterialApp(
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,

          // localization
          localizationsDelegates: Langs.localizationsDelegates,
          supportedLocales: Langs.supportedLocales,
          locale: settingsConfig.language,
          localeResolutionCallback: (locale, supportedLocales) {
            if (supportedLocales.contains(locale)) return locale;

            return const Locale('en');
          },
          onGenerateTitle: (context) => Langs.of(context)!.appTitle,

          // theme
          themeMode: settingsConfig.themeMode,
          theme: ThemeData(
            fontFamily:
                settingsConfig.theme.baseTheme.fontFamily[FontFamilies.main],
          ).copyWith(
            extensions: [settingsConfig.theme.baseTheme],
          ),
          darkTheme: ThemeData(
            fontFamily:
                settingsConfig.theme.baseTheme.fontFamily[FontFamilies.main],
          ).copyWith(
            extensions: [settingsConfig.theme.darkTheme],
          ),

          // routes
          onGenerateRoute: (settings) =>
              RoutesConfig().configure(settings, settingsConfig),
        );
      },
    );
  }
}
