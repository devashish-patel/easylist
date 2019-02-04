import 'package:flutter/material.dart';
import 'package:easylist/components/add_product_button.dart';
import 'package:easylist/components/product_list.dart';

class Products extends StatefulWidget {
  final String initialProduct;

  Products({this.initialProduct = 'Intial Product'});

  @override
  State<StatefulWidget> createState() {
    return _Product();
  }
}

class _Product extends State<Products> {
  Widget get navBarTitle => Text('Products');
  final List<String> _products = [];

  @override
  void initState() {
    super.initState();

    //TODO: Call `datasource` from here and populate the products
    //FIXME: Remove this after final implementation
    _products.add(widget.initialProduct);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: navBarTitle),
      body: Column(
        children: <Widget>[
          Container(
              child: AddProduct(_addProduct), margin: EdgeInsets.all(10.0)),
          Expanded(
            child: ProductList(_products),
          )
        ],
      ),
    );
  }
}
