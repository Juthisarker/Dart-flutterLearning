import 'package:flutter/material.dart';

import '../product_manager.dart';
import './products.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('choose admin'),
            ),
            ListTile(
              title: Text('all products'),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
              '/' );
              },
            )
          ],
        )),
        appBar: AppBar(
          title: Text('Mange product'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon:Icon(Icons.create),
                text: 'Create product'),
              Tab(
                icon:Icon(Icons.list),
                text: 'My product'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage()
          ],
        ),)
      );
    
  }
}
