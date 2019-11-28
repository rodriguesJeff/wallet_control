import 'package:flutter/material.dart';

Widget textField(TextEditingController controller, String label, String prefix, TextInputType inputType) {
  return TextFormField(
    keyboardType: inputType,
    controller: controller, 
    validator: (value) {
      if (value.isEmpty){
        return "Por favor insira um valor válido!";
      }
      return null;
    },   
    decoration: InputDecoration(
      prefix: Text(prefix),
      labelText: label,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(15)
      )
    ),
  );
}

