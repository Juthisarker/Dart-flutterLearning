import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct });
  State<StatefulWidget> createState() {
    return _ProductMangerState(startingProduct);
  }
}

class _ProductMangerState extends State<ProductManager> {
  List<String> _products = [];

  void initState() {
    if(widget.startingProduct!=null){
    _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  _ProductMangerState(startingProduct);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
       Expanded( child:Products(_products))
      ],
    );
  }
}
