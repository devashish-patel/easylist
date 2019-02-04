import 'package:flutter/material.dart';
import 'app_theme.dart';

class EasyList extends StatelessWidget {
  final String appTitle = 'EasyList';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: appTheme,
    );
  }
}
