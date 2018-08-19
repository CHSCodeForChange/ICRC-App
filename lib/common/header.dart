import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {

  String title;
  String subheading;

  Header(this.title, this.subheading);

  @override
  Widget build(BuildContext context) {
    return new Column (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: new Text(
            this.title,
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 40.0, color: Colors.white),
        )),
        new Container(
          margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
          child: new Text(
            this.subheading,
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontSize: 15.0, color: Colors.white),
        )),
      ],
    );
  }
}