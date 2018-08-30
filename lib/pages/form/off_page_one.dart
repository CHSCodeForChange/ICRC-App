import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../common/verify.dart';
import '../../common/dropdown.dart';
import '../../models/form_data.dart';
import './sec_page_two.dart';

class OffPageOne extends StatefulWidget {
  FormDataModel data;
  OffPageOne(this.data);

  @override
  OffPageOneState createState() => new OffPageOneState(data);
}

class OffPageOneState extends State<OffPageOne> {
  final _formKey = GlobalKey<FormState>();

  final double formMarginHoriz = 10.0;
  final double formMarginVert = 5.0;

  DropDownFromMap off_type;

  // constructor
  FormDataModel data;
  OffPageOneState(data) {
    this.data = data;
    this.off_type = new DropDownFromMap(data.offenderType, 'Offense Type');
  }

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
                    off_type,
                    new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new RaisedButton(
                            onPressed: () {
                              //data.setSecPageTwoData(city.text, state.text,
                              //    address.text, int.parse(zipcode.text));
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                            child: Text('Previous'),
                          ),
                          new RaisedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                //data.setSecPageTwoData(city.text, state.text,
                                //    address.text, int.parse(zipcode.text));
                                /* Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        SecPageOne(data))); */
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
