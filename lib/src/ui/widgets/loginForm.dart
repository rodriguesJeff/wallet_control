import 'package:flutter/material.dart';
import 'package:wallet/src/controller/login.dart';

TextEditingController loginController = TextEditingController();
TextEditingController passController = TextEditingController();

final login = Login();
final FocusNode _emailFocus = FocusNode();
final FocusNode _passFocus = FocusNode();

Widget textformfield(GlobalKey<FormState> key, BuildContext context){
  return Container(
    child: Form(
      key: key,
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              controller: loginController,
              validator: (value){
                if (value.isEmpty){
                  return "Os campos não podem ser vazios";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              focusNode: _emailFocus,
              onFieldSubmitted: (term){
                _fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
                  currentFocus.unfocus();
                  FocusScope.of(context).requestFocus(nextFocus);  
                }
                _fieldFocusChange(context, _emailFocus, _passFocus);
              },
              decoration: InputDecoration(
                labelText: "Email",      
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
              style: TextStyle(
                color: Colors.white,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
              obscureText: true,
              controller: passController,
              validator: (value){
                if (value.length < 8 || value.isEmpty){
                    return "A senha não pode ter menos que 8 caracteres";
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              focusNode: _passFocus,
              onFieldSubmitted: (term){
                _fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
                  currentFocus.unfocus();
                  FocusScope.of(context).requestFocus(nextFocus);  
                }
                _fieldFocusChange(context, _passFocus, _passFocus);
              },
              decoration: InputDecoration(
                labelText: "Senha",      
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
              style: TextStyle(
                color: Colors.white,
              )
            ),
          ),
          SizedBox(height: 20.0),
          
        ]
      )
    ),
  );

}

