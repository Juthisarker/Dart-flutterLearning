import 'package:flutter/material.dart';

import '../product_manager.dart';


class ProductsPage extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addProduct;
    final Function deleteProduct;
    ProductsPage(this.products,this.addProduct,this.deleteProduct);
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('choose'),
          ),
          ListTile(
            title: Text('manage products'),
            onTap: () {
              Navigator.pushReplacementNamed(context,'/admin');
            },
          )
        ],
      )),
      appBar: AppBar(
        title: Text('Easylist'),
      ),
      body: ProductManager(products,addProduct,deleteProduct),
    );
  }
}
