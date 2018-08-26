import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final double formMarginHoriz = 10.0;
final double formMarginVert = 5.0;

class DropDownFromMap extends StatefulWidget {
  Map<String, int> kv;
  DropDownFromMap(this.kv);

  @override
  DropDownFromMapState createState() => new DropDownFromMapState(kv);
}

class DropDownFromMapState extends State<DropDownFromMap> {
  Map<String, int> kv;
  DropDownFromMapState(this.kv);

  int selectedVal;

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(
            top: formMarginVert,
            bottom: formMarginVert,
            left: formMarginVert,
            right: formMarginHoriz),
        child: new DropdownButton<int>(
          hint: new Text("Select an option"),
          value: selectedVal,
          onChanged: (String newVal) {
            setState(() {
              selectedVal = kv[newVal];
            });
          },
          items: kv.map((String k, _) {
            return new DropdownMenuItem<String>(
              value: k,
              child: new Text(k),
            );
          }).toList(),
        ));
  }
}
