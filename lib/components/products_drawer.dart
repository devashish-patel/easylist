import 'package:easylist/components/manu_item.dart';
import 'package:easylist/routes.dart';
import 'package:flutter/material.dart';

class ProductsDrawer extends StatelessWidget {
  Widget get drawerTitle => Text('Options');
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: drawerTitle,
            centerTitle: true,
          ),
          MenuItem(
              title: 'Manage Products',
              leading: Icon(Icons.map),
              textStyle: textTheme.body2,
              route: AppRoutes.admin)
        ],
      ),
    );
  }
}
