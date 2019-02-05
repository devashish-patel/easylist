import 'package:easylist/models/product.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  final Function addProduct;

  AddProduct(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      child: Text('Add Product'),
      onPressed: () {
        // TODO: Navigate to add product page
        // FIXME: Remove this manual entry
        var prod = {'name': 'Foo', 'price': 200.0};

        Product sampleProd = Product.fromJson(prod);
        addProduct(sampleProd);
      },
    );
  }
}
