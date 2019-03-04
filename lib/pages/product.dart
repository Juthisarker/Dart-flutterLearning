import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title,this.imageUrl);
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:(){
      print('back button');
      Navigator.pop(context,false);
      return Future.value(false);
    },child:Scaffold(
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
                child: Text('delete'),
                onPressed: () {
                  showDialog(context:context,builder:(BuildContext context){
                    return AlertDialog(title:Text('Are you sure?'),content: Text('this action can not be undone'),
                    actions:<Widget>[
                      FlatButton(child:Text('discard'),onPressed:(){
                                    Navigator.pop(context);
                      } ,),
                      FlatButton(child:Text('continue'),onPressed:(){
                         Navigator.pop(context);
                         Navigator.pop(context,true);

                      } ,),

                    ]);
                  });
                }
              ),
            )
          ],
        )),);
  }
}
