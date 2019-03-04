import 'package:flutter/material.dart';

import './user_input.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
 
   
   Widget build(BuildContext build)
{
  return MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: Text('user input'),),
      body: UserInput(),
     
    ),  
   
  );
}

}
