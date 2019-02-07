import 'package:flutter/material.dart';

class ProductsDrawer extends StatelessWidget {
  Widget get drawerTitle => Text('Options');
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: drawerTitle,
            centerTitle: true,
          ),
          ListTile(
            title: Text('Manage Product'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
