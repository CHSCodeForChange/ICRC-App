import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../common/verify.dart';
import '../../models/form_data.dart';
import './page_one.dart';
import './sec_page_one.dart';

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
                    new Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: new Text(
                          'Complaint Form',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: 40.0, color: Colors.white),
                        )),
                    new Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
                        child: new Text(
                          'Secondary Data Page Two',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.white),
                        )),
                    new Container(
                        margin: EdgeInsets.only(
                            top: formMarginVert,
                            bottom: formMarginVert,
                            left: formMarginHoriz,
                            right: formMarginHoriz),
                        child: new TextFormField(
                          controller: city,
                          decoration: new InputDecoration(
                            labelText: "City",
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter some text";
                            }
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.only(
                            top: formMarginVert,
                            bottom: formMarginVert,
                            left: formMarginHoriz,
                            right: formMarginHoriz),
                        child: new TextFormField(
                          controller: state,
                          decoration: new InputDecoration(
                            labelText: "State",
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter some text";
                            } else if (!isUSState(value)) {
                              return "Enter a two-letter state abbreviation";
                            }
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.only(
                            top: formMarginVert,
                            bottom: formMarginVert,
                            left: formMarginHoriz,
                            right: formMarginHoriz),
                        child: new TextFormField(
                          controller: address,
                          decoration: new InputDecoration(
                            labelText: "Address",
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter some text";
                            }
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.only(
                            top: formMarginVert,
                            bottom: formMarginVert,
                            left: formMarginHoriz,
                            right: formMarginHoriz),
                        child: new TextFormField(
                          controller: zipcode,
                          decoration: new InputDecoration(
                            labelText: "Zip Code",
                            fillColor: Colors.white,
                            errorStyle: TextStyle(color: Colors.white),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter some text";
                            } else if (!isNumeric(value)) {
                              return "Should only contain numbers";
                            }
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new RaisedButton(
                          onPressed: () {
                            data.setSecPageTwoData(city.text, state.text,
                                address.text, zipcode.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecPageOne(data)));
                          },
                          color: Colors.white,
                          child: Text('Previous'),
                        )),
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              data.setSecPageTwoData(city.text, state.text,
                                  address.text, zipcode.text);
                            }
                          },
                          color: Colors.white,
                          child: Text('Next'),
                        ))
                  ],
                ))));
  }
}
