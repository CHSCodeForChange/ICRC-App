import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownFromMap extends StatefulWidget {
  Map<String, int> kv;
  DropDownFromMap(this.kv);

  @override
  DropDownFromMapState createState() => new DropDownFromMapState();
}

class DropDownFromMapState extends State<DropDownFromMap> {
  Map<String, int> kv;
  DropDownFromMapState(this.kv);

  int selectedVal;

  @override
  Widget build(BuildContext context) {
    return new Material(
        //color: colors.blueAccent,
        child: new DropdownButton<int>(
          hint: new Text("Select an option"),
          value: selectedVal,
          onChanged: (String newVal) {
            setState(() {
              selectedVal = kv[newVal];
            });
          },
          items: kv.map((String k, int v) {
            return new DropdownMenuItem<String>(
              value: k,
              child: new Text(k),
            );
          }).toList(),
        ));
  }
}
