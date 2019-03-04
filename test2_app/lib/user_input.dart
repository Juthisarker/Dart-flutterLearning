import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class UserInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestInputState();
  }
}

class _TestInputState extends State<UserInput> {
  String titleValue = '';
  String descriptionValue = '';
  double decimal;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Enter your Name"),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          Text(titleValue, style: TextStyle(fontWeight: FontWeight.bold)),
          //  TextField(
          //    maxLines: 4,
          //    onChanged: (String value){
          //     setState((){
          //      descriptionValue=value;
          //     });
          //   },
          //   ),
          TextFormField(
            decoration: InputDecoration(labelText: "Enter your Number"),
            keyboardType: TextInputType.number,
            onSaved: (String value) {
              decimal = double.parse(value);
            },
            inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
          ),
        ],
      ),
    );
  }
}
