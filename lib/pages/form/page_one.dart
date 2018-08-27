import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/form_data.dart';
import '../../common/input.dart';
import '../../common/header.dart';
import './page_two.dart';

// Define a Custom Form Widget
class PageOne extends StatefulWidget {
  FormDataModel data;
  PageOne(this.data);

  @override
  PageOneState createState() => new PageOneState(data);
}

// Define a corresponding State class. This class will hold the data related to
// the form.
class PageOneState extends State<PageOne> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a `GlobalKey<FormState>`, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final number = TextEditingController();

  final double formMarginHoriz = 10.0;
  final double formMarginVert = 5.0;

  // constructor
  FormDataModel data = new FormDataModel();
  PageOneState(this.data);

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
                    new Header('Complaint Form', 'Primary Data Page One'),
                    new myTextInput(
                        'First Name', firstname, ValidationType.basic),
                    new myTextInput(
                        'Last Name', lastname, ValidationType.basic),
                    new myTextInput('Email', email, ValidationType.email),
                    new myTextInput(
                        'Phone Number', number, ValidationType.phone),
                    new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              data.setPageOneData(firstname.text, lastname.text,
                                  email.text, number.text);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageTwo(data)));
                            }
                          },
                          color: Colors.white,
                          child: Text('Next'),
                        ))
                  ],
                ))));
  }
}
