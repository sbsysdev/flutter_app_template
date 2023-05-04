// flutter
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/langs.dart';
// views
import 'package:app/views/settings/settings_view.dart';
// types
import 'package:app/types/base_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<BaseTheme>()!;

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
          ],
        ),
        body: Text("Home view body",
            style: TextStyle(color: theme.font, backgroundColor: theme.bg)),
      ),
    );
  }
}
