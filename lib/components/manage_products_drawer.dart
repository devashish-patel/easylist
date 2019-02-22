import 'package:flutter/material.dart';
import 'package:easylist/screens/products.dart';

class ManageProductsDrawer extends StatelessWidget {
  Widget get drawerTitle => Text('All Products');

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
            title: Text('All Products'),
            onTap: () {
              return Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Products();
              }));
            },
          )
        ],
      ),
    );
  }
}
