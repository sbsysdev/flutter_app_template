// flutter
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/langs.dart';
// views
import 'package:app/views/settings/settings_view.dart';
import 'package:app/views/qr/qr_view.dart';
// types
import 'package:app/shared/types/theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Langs.of(context)!.homeView),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
            ),
            IconButton(
              icon: const Icon(Icons.qr_code),
              onPressed: () {
                Navigator.restorablePushNamed(context, QrView.routeName);
              },
            ),
          ],
        ),
        body: Text(
          "Home view body",
          style: TextStyle(
            color: theme.current.colors.font,
            backgroundColor: theme.current.colors.bg,
          ),
        ),
      ),
    );
  }
}
