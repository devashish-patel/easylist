import 'package:easylist/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  ProductDetails(this.product);
  Widget get navBarTitle => Text(product.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: navBarTitle,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('Delete'),
            onPressed: () {
              return Navigator.pop(context, true);
            },
          ),
          Image.asset(
            product.imageLink,
            height: 400.0,
            width: 600.0,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Text(product.name),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Text('${product.price}'),
            ),
          )
        ],
      ),
    );
  }
}
