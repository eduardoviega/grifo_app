import 'package:flutter/widgets.dart';
import 'package:grifo_app/app.dart';
import 'package:grifo_app/core/config/app_config.dart';
import 'package:grifo_app/core/di/injection.dart';

/// Inicialização comum a todos os flavors.
///
/// Cada entrypoint (main_dev, main_prod) só monta o [AppConfig] do seu
/// ambiente e chama esta função. Inicializações futuras (get_it, drift,
/// Firebase) entram aqui, uma única vez.
void bootstrap(AppConfig config) {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(config);
  runApp(App(config: config));
}
