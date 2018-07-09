import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {

  void openAddPassMenu () {
  }
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.lightBlue,

      child: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(
                'Indiana Civil Rights Comission', 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
              ), 
            ),
            new Container (
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(
                'Complaint Form', 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30.0,),
              ), 
            ), 
            new Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new RaisedButton()
            )
          ],
        )
      )
      
    );
  }

}