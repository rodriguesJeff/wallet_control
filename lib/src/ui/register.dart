import 'package:flutter/material.dart';

import 'package:wallet/src/ui/widgets/textformfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[900], Colors.blue[100]],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0, bottom: 15.5),
                      child: Text(
                          "MyWallet",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: textformfield("Email", loginController, false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
                      child: textformfield("Nome", nameController, false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
                      child: textformfield("Sobrenome", surnameController, false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
                      child: textformfield("Senha", passController, true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
                      child: textformfield("Confirmar senha", pass2Controller, true),
                    ),
                    SizedBox(height: 20.0),
                    ButtonTheme(
                        minWidth: 130.0,
                        height: 50.0,
                        child: RaisedButton(
                          color: Colors.blueGrey[200],
                          child: Text(
                              "CADASTRAR",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              )
                          ),
                          onPressed: () {

                          },
                        )
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
          ),
        )
      ),
    );
  }
}