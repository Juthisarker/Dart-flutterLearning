import 'package:flutter/material.dart';

import '../product_manager.dart';


class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return  Scaffold(
       
          appBar: AppBar(
            title: Text('Easylist'),
          ),
          body: ProductManager(),
          
          );
  }
}
