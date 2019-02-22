import 'package:flutter/material.dart';
import 'package:easylist/components/manage_products_drawer.dart';

class ProductsAdminScreen extends StatelessWidget {
  Widget title() {
    return AppBar(
      title: Text('Manage Products'),
    );
  }

  Widget view(BuildContext context) {
    return Center(
      child: Text('Manage Your Products'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ManageProductsDrawer(),
      appBar: title(),
      body: view(context),
    );
  }
}
