import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:easylist/screens/products_admin.dart';
import 'package:easylist/screens/products.dart';

class Application {
  static Router router;
}

class AppRoutes {
  static String admin = '/admin/';
  static String products = '/products';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    router.define(admin, handler: adminHandler);
    router.define(products, handler: productList);
  }
}

var adminHandler =
    Handler(handlerFunc: (context, params) => ProductsAdminScreen());

var productList = Handler(handlerFunc: (context, params) => Products());
