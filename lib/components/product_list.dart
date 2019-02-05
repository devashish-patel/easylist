import 'package:easylist/models/product.dart';
import 'package:easylist/screens/product_details.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final Function removeProduct;

  ProductList(this.products, this.removeProduct);

  Widget _productList(BuildContext context, int i) {
    Product product = products[i];

    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            product.imageLink,
            height: 300.0,
            width: 500.0,
          ),
          Text('${product.name} - $i'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  return Navigator.push<bool>(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ProductDetails(product);
                  })).then((canDelete) {
                    if (canDelete) {
                      removeProduct(i);
                    }
                  });
                },
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
