import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('product detail'),
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,//VERTICAL
          crossAxisAlignment: CrossAxisAlignment.center, //horizontal
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('pro details'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color:Theme.of(context).accentColor,
                child: Text('Back'),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ));
  }
}
