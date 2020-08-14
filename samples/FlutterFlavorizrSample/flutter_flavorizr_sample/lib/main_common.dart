import 'package:flutter/material.dart';

import 'flavors.dart';
import 'home_page.dart';

void mainCommon() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildApp(F.title);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
          primaryColor: Color(0xFF43a047),
          accentColor: Color(0xFFffcc00),
          primaryColorBrightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
