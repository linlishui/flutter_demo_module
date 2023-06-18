import 'package:app_demo/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FlutterProxyApp());
}

class FlutterProxyApp extends StatelessWidget {
  const FlutterProxyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final rootWidget = MaterialApp(
        title: 'AppDemoModule',
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) {
            switch (settings.name) {
              case "/":
                return const PlaceholderPage();
              case "/home":
                return const FlutterDemoApp();
              default:
                return const Scaffold(
                  body: Center(
                    child: Text("页面不存在"),
                  ),
                );
            }
          });
        });
    return rootWidget;
  }
}

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
