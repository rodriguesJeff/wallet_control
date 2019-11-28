import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/src/controller/addrem.dart';

import 'package:wallet/src/ui/widgets/textformfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final operations = Provider.of<Operations>(context);
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

                    //padding: EdgeInsets.only(top: 50.0, bottom: 15.5),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                          "MyWallet",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),

                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: textformfield("Login", loginController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
                          child: textformfield("Senha", passController, true),
                        ),
                        SizedBox(height: 20.0),
                        ButtonTheme(
                            minWidth: 130.0,
                            height: 50.0,
                            child: RaisedButton(
                              color: Colors.blueGrey[200],
                              child: Text(
                                  "ENTRAR",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  )
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, "/home");
                              },
                            )
                        ),
                        SizedBox(height: 15.0),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/register");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Não é cadastrado?",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                "Cadastre-se!",
                                style: TextStyle(
                                    color: Colors.blue[900]
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image(image: AssetImage('assets/images/gicon.png')),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Ou entre com o Google",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}