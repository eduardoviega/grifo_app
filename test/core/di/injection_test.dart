import 'package:flutter_test/flutter_test.dart';
import 'package:grifo_app/core/config/app_config.dart';
import 'package:grifo_app/core/di/injection.dart';

void main() {
  tearDown(getIt.reset);

  test('configureDependencies registers the given AppConfig', () {
    const config = AppConfig(flavor: Flavor.dev, appName: 'Grifo Dev');

    configureDependencies(config);

    expect(getIt<AppConfig>(), same(config));
  });
}
