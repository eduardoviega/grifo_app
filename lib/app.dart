import 'package:flutter/material.dart';
import 'package:grifo_app/core/config/app_config.dart';

class App extends StatelessWidget {
  const new({required this.config, super.key});

  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text(config.appName)),
      ),
    );
  }
}
