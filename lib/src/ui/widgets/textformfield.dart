import 'package:flutter/material.dart';

Widget textformfield(String campo, TextEditingController controller, bool option){
  return TextFormField(
    obscureText: option,
    decoration: InputDecoration(
      labelText: campo,
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color:  Colors.white, width: 1)
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1)
      )
    ),
  );
}