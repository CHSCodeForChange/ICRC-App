import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './verify.dart';

enum ValidationType { basic, email, phone, state, zip }

final double formMarginHoriz = 10.0;
final double formMarginVert = 5.0;

class myTextInput extends StatelessWidget {
  String label;
  TextEditingController controller;
  ValidationType valType;

  myTextInput(this.label, this.controller, this.valType);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(
            top: formMarginVert,
            bottom: formMarginVert,
            left: formMarginHoriz,
            right: formMarginHoriz),
        child: new TextFormField(
          controller: this.controller,
          decoration: new InputDecoration(
            labelText: this.label,
            fillColor: Colors.white,
            errorStyle: TextStyle(color: Colors.white),
            filled: true,
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "Enter some text";
            }

            switch (valType) {
              case ValidationType.phone:
                if (!isNumeric(value)) {
                  return "Should only contain numbers";
                } else if (value.length != 10) {
                  return "Should be 3 digit area code and 7 digit local number";
                }
                break;
              case ValidationType.email:
                if (!isEmail(value)) {
                  return "Not a valid email";
                }
                break;
              case ValidationType.state:
                if (!isUSState(value)) {
                  return "Enter a two-letter state abbreviation";
                }
                break;
              case ValidationType.zip:
                if (!isNumeric(value)) {
                  return "Should only contain numbers";
                }
                break;
              default:
                break;
            }
          },
        ));
  }
}
