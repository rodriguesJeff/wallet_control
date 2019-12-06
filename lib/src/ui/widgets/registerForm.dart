import 'package:flutter/material.dart';
import 'package:wallet/src/controller/register.dart';

TextEditingController loginController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController nickController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController pass2Controller = TextEditingController();

final FocusNode _emailFocus = FocusNode();
final FocusNode _nameFocus = FocusNode();
final FocusNode _nickFocus = FocusNode();
final FocusNode _passFocus = FocusNode();
final FocusNode _pass2Focus = FocusNode();
final FocusNode _btnSave = FocusNode();


final request = Register();

Widget registerForm(GlobalKey<FormState> key, BuildContext context){

  _fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);  
  }

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
                _fieldFocusChange(context, _emailFocus, _nameFocus);
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
              controller: nameController,
              validator: (value){
                if (value.length < 8 || value.isEmpty){
                    return "O nome não pode ser nulo";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              focusNode: _nameFocus,
              onFieldSubmitted: (term){                
                _fieldFocusChange(context, _nameFocus, _nickFocus);
              },
              decoration: InputDecoration(
                labelText: "Nome e Sobrenome",      
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
              controller: nickController,
              validator: (value){
                if (value.isEmpty){
                    return "O apelido não pode ser nulo";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              focusNode: _nickFocus,
              onFieldSubmitted: (term){                
                _fieldFocusChange(context, _nickFocus, _passFocus);
              },
              decoration: InputDecoration(
                labelText: "Apelido",      
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
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              focusNode: _passFocus,
              onFieldSubmitted: (term){                
                _fieldFocusChange(context, _passFocus, _pass2Focus);
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
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
              obscureText: true,
              controller: pass2Controller,
              validator: (value){
                if (value.length < 8 || value.isEmpty || pass2Controller.text != passController.text){
                    return "As senhas não coincidem!";
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              focusNode: _pass2Focus,
              onFieldSubmitted: (term){                
                _fieldFocusChange(context, _pass2Focus, _btnSave);
              },
              decoration: InputDecoration(
                labelText: "Repita a senha",      
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
          SizedBox(height: 15),
            ButtonTheme(
              minWidth: 130.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.blueGrey[200],
                focusNode: _btnSave,
                child: Text(
                    "CADASTRAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    )
                ),
                onPressed: () {
                  if (key.currentState.validate()){
                    String email = loginController.text;
                    String name = nameController.text;
                    String username = nickController.text;
                    String pass = passController.text;
                    request.saveUser(email, name, username, pass);
                    if (request.response.statusCode != 200){
                      AlertDialog(
                        title: Text("Não foi possível cadastrar, cheque sua conexão"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    } else {
                      Navigator.pushReplacementNamed(context, "/home");
                    }    
                    return null;                
                  }                                
                },
              )
            ),
        ]
      )
    ),
  );  
}

