import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('please authenticate'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('login'),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,'/'
             
            );
          },
        ),
      ),
    );
  }
}
