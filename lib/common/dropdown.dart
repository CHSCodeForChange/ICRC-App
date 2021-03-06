import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final double formMarginHoriz = 10.0;
final double formMarginVert = 5.0;

class DropDownFromMap extends StatefulWidget {
  Map<String, int> kv;
  DropDownFromMap(this.kv, this.title);

  @override
  DropDownFromMapState createState() => new DropDownFromMapState(kv, title);
}

class DropDownFromMapState extends State<DropDownFromMap> {
  Map<String, int> kv;
  DropDownFromMapState(this.kv, this.title);

  String selectedVal;
  int numVal;

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(
            top: formMarginVert,
            bottom: formMarginVert,
            left: formMarginVert,
            right: formMarginHoriz),
        child: new InputDecorator(
            decoration: const InputDecoration(
              labelText: this.title,
              fillColor: Colors.white,
              errorStyle: TextStyle(color: Colors.white),
              filled: true,
            ),
            isEmpty: selectedVal == '',
            child: new DropdownButtonHideUnderline(
                // why
                child: new DropdownButton<String>(
              hint: new Text("Select an option"),
              value: selectedVal,
              onChanged: (String newVal) {
                setState(() {
                  // tricky tricky... ;)
                  numVal = kv[newVal];
                  selectedVal = newVal;
                });
              },
              items: kv.keys.map((String k) {
                return new DropdownMenuItem<String>(
                  value: k,
                  child: new Text(k),
                );
              }).toList(),
            ))));
  }
}
