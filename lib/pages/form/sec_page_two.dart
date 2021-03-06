import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/form_data.dart';
import '../../common/input.dart';
import '../../common/header.dart';
import './off_page_one.dart';

class SecPageTwo extends StatefulWidget {
  FormDataModel data;
  SecPageTwo(this.data);

  @override
  SecPageTwoState createState() => new SecPageTwoState(data);
}

class SecPageTwoState extends State<SecPageTwo> {
  final _formKey = GlobalKey<FormState>();

  final city = TextEditingController();
  final state = TextEditingController();
  final address = TextEditingController();
  final zipcode = TextEditingController();

  final double formMarginHoriz = 10.0;
  final double formMarginVert = 5.0;

  // constructor
  FormDataModel data;
  SecPageTwoState(this.data);

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new Container(
            child: new Form(
                key: _formKey,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Header('Complaint Form', 'Secondary Data Page Two'),
                    new myTextInput('City', city, ValidationType.basic),
                    new myTextInput('State', state, ValidationType.state),
                    new myTextInput('Address', address, ValidationType.basic),
                    new myTextInput('Zipcode', zipcode, ValidationType.zip),
                    new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new RaisedButton(
                            onPressed: () {
                              data.setSecPageTwoData(city.text, state.text,
                                  address.text, int.parse(zipcode.text));
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                            child: Text('Previous'),
                          ),
                          new RaisedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                data.setSecPageTwoData(city.text, state.text,
                                    address.text, int.parse(zipcode.text));
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        OffPageOne(data)));
                              }
                            },
                            color: Colors.white,
                            child: Text('Next'),
                          ),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
