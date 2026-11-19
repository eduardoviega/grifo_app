import 'package:get_it/get_it.dart';
import 'package:grifo_app/core/config/app_config.dart';

/// Registro central de dependências do app.
final GetIt getIt = GetIt.instance;

/// Registra as dependências compartilhadas por todo o app.
///
/// Chamada uma única vez, pelo `bootstrap`, antes do `runApp`. Cada feature
/// vai ganhar sua própria função de registro, chamada a partir daqui.
void configureDependencies(AppConfig config) {
  getIt.registerSingleton<AppConfig>(config);
}
