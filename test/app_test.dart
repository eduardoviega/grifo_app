import 'package:flutter_test/flutter_test.dart';
import 'package:grifo_app/app.dart';
import 'package:grifo_app/core/config/app_config.dart';

void main() {
  testWidgets('App shows the flavor app name', (tester) async {
    await tester.pumpWidget(
      const App(
        config: AppConfig(flavor: Flavor.dev, appName: 'Grifo Dev'),
      ),
    );

    expect(find.text('Grifo Dev'), findsOneWidget);
  });
}
