class AppConfig {
  const new({required this.flavor, required this.appName});

  final Flavor flavor;
  final String appName;

  bool get isDev => flavor == Flavor.dev;
}

enum Flavor { dev, prod }
