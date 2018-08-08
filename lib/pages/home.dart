import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './form/page_one.dart';
import '../models/form_data.dart';

class Home extends StatelessWidget {
  FormDataModel data = new FormDataModel();

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(
                'Indiana Civil Rights Comission',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(
                'Complaint Form',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            new Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageOne(data)));
                    },
                    color: Colors.white,
                    child: new Text('Begin')))
          ],
        )));
  }
}
