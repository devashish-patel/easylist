import 'package:easylist/components/add_product_button.dart';
import 'package:easylist/components/product_list.dart';
import 'package:easylist/models/product.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Product();
  }
}

class _Product extends State<Products> {
  Widget get navBarTitle => Text('Products');
  final List<Product> _products = [];

  @override
  void initState() {
    super.initState();

    Map initProd = {
      'name': 'Initial Product',
      'price': 100.0,
      'imageLink': 'images/burger.jpeg'
    };

    Product initialProd = Product.fromJson(initProd);

    //TODO: Call `datasource` from here and populate the products
    //FIXME: Remove this after final implementation
    _products.add(initialProd);
  }

  void _addProduct(Product product) {
    setState(() {
      _products.add(product);
    });
  }

  void _removeProduct(int i) {
    setState(() {
      _products.removeAt(i);
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
            child: ProductList(_products, _removeProduct),
          )
        ],
      ),
    );
  }
}
