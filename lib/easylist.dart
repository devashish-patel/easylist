import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'screens/products.dart';

class EasyList extends StatelessWidget {
  final String appTitle = 'EasyList';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Products(),
      title: appTitle,
      theme: appTheme,
    );
  }
}
