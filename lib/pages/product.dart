import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title,this.imageUrl);
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,//VERTICAL
          crossAxisAlignment: CrossAxisAlignment.center, //horizontal
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
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
