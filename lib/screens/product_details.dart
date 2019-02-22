import 'package:easylist/models/product.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetails extends StatelessWidget {
  final Product product;

  ProductDetails(this.product);
  Widget get navBarTitle => Text(product.name);

  Widget deleteWarning(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('This can\'t be undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('No'),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  Widget productDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).accentColor,
          child: Text('Delete'),
          onPressed: () => deleteWarning(context),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: navBarTitle,
          ),
          body: productDetails(context),
        ),
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}
