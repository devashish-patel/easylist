import 'package:flutter/material.dart';
import 'products.dart';

class Auth extends StatelessWidget {
  Widget get navBarTitle => Text('Authentication');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: navBarTitle),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            return Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Products();
            }));
          },
          child: Text('LOGIN'),
        ),
      ),
    );
  }
}
