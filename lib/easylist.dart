import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:easylist/routes.dart';

import 'app_theme.dart';
import 'screens/auth.dart';

class EasyList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EasyList();
  }
}

class _EasyList extends State<EasyList> {
  Router router = Router();
  final String appTitle = 'EasyList';

  @override
  void initState() {
    super.initState();
    AppRoutes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    Application.router.printTree();
    return MaterialApp(
      home: Auth(),
      title: appTitle,
      theme: appTheme,
      onGenerateRoute: Application.router.generator,
    );
  }
}
