// flutter
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
// services
import 'package:app/services/settings_service.dart';
// configs
import 'package:app/configs/settings_config.dart';
// app
import 'package:app/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App(
      settingsConfig: SettingsConfig(
        SettingsService(),
      ),
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
