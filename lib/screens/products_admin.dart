import 'package:flutter/material.dart';
import 'package:easylist/components/manage_products_drawer.dart';
import 'create_product.dart';
import 'list_products.dart';

class ProductsAdminScreen extends StatelessWidget {
  Widget title() {
    return AppBar(
      title: Text('Manage Products'),
      bottom: TabBar(tabs: <Widget>[
        Tab(
          icon: Icon(Icons.list),
        ),
        Tab(
          icon: Icon(Icons.create),
        )
      ]),
    );
  }

  Widget view(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: ManageProductsDrawer(),
        appBar: title(),
        body: TabBarView(
            children: <Widget>[CreateProductScreen(), ListProductsScreen()]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return view(context);
  }
}
