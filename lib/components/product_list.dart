import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<String> products;

  ProductList(this.products);

  Widget _productList(BuildContext context, int i) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('images/burger.jpeg'),
          Text('${products[i]} - $i'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget productCard = Center(
      child: Text('Please Add Products'),
    );

    if (products.length > 0) {
      productCard = ListView.builder(
          itemBuilder: _productList, itemCount: products.length);
    }

    return productCard;
  }
}
