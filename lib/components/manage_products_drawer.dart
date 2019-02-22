import 'package:flutter/material.dart';
import 'package:easylist/components/manu_item.dart';
import 'package:easylist/routes.dart';

class ManageProductsDrawer extends StatelessWidget {
  Widget get drawerTitle => Text('All Products');

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
              title: 'All Products',
              leading: Icon(Icons.list),
              textStyle: textTheme.body2,
              route: AppRoutes.products),
        ],
      ),
    );
  }
}
