import 'package:flutter/material.dart';
import 'package:wallet/src/ui/widgets/loginForm.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        key: _scaffoldstate,
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    "MyWallet",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                textformfield(_formKey, context),
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
                      if (_formKey.currentState.validate()){
                        var pass = passController.text;
                        var email = loginController.text;
                        login.autentic(email, pass);
                        
                        if (login.autentic(email, pass) == false){                    
                          _scaffoldstate.currentState.showSnackBar(
                            SnackBar(content: Text("Usuário ou senha incorretos"))
                          );
                        } else {
                          Navigator.pushReplacementNamed(context, "/home");
                        }
                        return null;
                      }                                
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
          ),
            

        ),   
      ),     
    );        
  }
}