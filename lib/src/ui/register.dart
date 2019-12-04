import 'package:flutter/material.dart';
import 'package:wallet/src/ui/widgets/registerForm.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {  
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
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0, bottom: 15.5),
                  child: Text(
                      "MyWallet",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                registerForm(_formKey, context), 
              ],
            ),
          )
          
        )
      ),
    );
  }
}