import 'package:grifo_app/bootstrap.dart';
import 'package:grifo_app/core/config/app_config.dart';

void main() {
  bootstrap(const AppConfig(flavor: Flavor.dev, appName: 'Grifo Dev'));
}
