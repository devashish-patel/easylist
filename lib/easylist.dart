import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'screens/auth.dart';

class EasyList extends StatelessWidget {
  final String appTitle = 'EasyList';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
      title: appTitle,
      theme: appTheme,
    );
  }
}
