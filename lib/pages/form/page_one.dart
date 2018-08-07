import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/form_data.dart';
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
  
  bool isNumeric(String s) {
    if(s == null) {
      return false;
    }
    return double.parse(s, (e) => null) != null;
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
              new Container(
                margin: EdgeInsets.only(top:30.0),
                child: new Text(
                  'Complaint Form',
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 40.0, color: Colors.white),
                )
              ),
              new Container(
                margin: EdgeInsets.only(top:10.0, bottom: 30.0),
                child: new Text(
                  'Page One of Who Cares',
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 15.0, color: Colors.white),
                )
              ),
              new Container(
                margin: EdgeInsets.only(top: formMarginVert,  bottom: formMarginVert, left: formMarginHoriz, right: formMarginHoriz),
                child: new TextFormField(
                  controller: firstname,
                  
                  decoration: new InputDecoration(
                    labelText: "First Name",
                    fillColor: Colors.white,
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter some text";
                    }
                  },
                )
              ),
              new Container(
                margin: EdgeInsets.only(top: formMarginVert,  bottom: formMarginVert, left: formMarginHoriz, right: formMarginHoriz),
                child: new TextFormField(
                  controller: lastname,
                  decoration: new InputDecoration(
                    labelText: "Last Name",
                    fillColor: Colors.white,
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter some text";
                    }
                  },
                )
              ),
              new Container(
                margin: EdgeInsets.only(top: formMarginVert,  bottom: formMarginVert, left: formMarginHoriz, right: formMarginHoriz),
                child: new TextFormField(
                  controller: email,
                  decoration: new InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter some text";
                    } else if (!value.contains('@') || !value.contains('.')) {
                      return "Not a valid email";
                    }
                  },
                )
              ),
              new Container(
                margin: EdgeInsets.only(top: formMarginVert,  bottom: formMarginVert, left: formMarginHoriz, right: formMarginHoriz),
                child: new TextFormField(
                  controller: number,
                  decoration: new InputDecoration(
                    labelText: "Phone Number",
                    fillColor: Colors.white,
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter some text";
                    } else if (!isNumeric(value)) {
                      return "Should only contain numbers";
                    } else if (value.length != 10) {
                      return "Should be 3 digit area code and 7 digit local number";
                    }
                  },
                )
              ),
              
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new RaisedButton(
                  onPressed: () { 
                    if (_formKey.currentState.validate()) {
                      data.setPageOneData(firstname.text, lastname.text,
                          email.text, number.text);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTwo(data))
                    );
                  },
                  color: Colors.white,
                  child: Text('Next'),
                )
              )
            ],
          )
        )
      )
    );
  }
}
