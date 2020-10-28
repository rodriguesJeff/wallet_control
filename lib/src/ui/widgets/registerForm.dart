import 'package:flutter/material.dart';
import 'package:wallet/src/controller/register.dart';

TextEditingController loginController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController usernameController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController pass2Controller = TextEditingController();

final register = Register();

Widget registerForm(GlobalKey<FormState> key, BuildContext context) {
  return Container(
    child: Form(
        key: key,
        child: Column(children: <Widget>[
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
                controller: loginController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Os campos não podem ser vazios";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "O nome não pode ser nulo";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
                controller: lastNameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "O sobrenome não pode ser nulo";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Sobrenome",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
                controller: usernameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "O apelido não pode ser nulo";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Apelido",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
                obscureText: true,
                controller: passController,
                validator: (value) {
                  if (value.length < 8 || value.isEmpty) {
                    return "A senha não pode ter menos que 8 caracteres";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.5, left: 50, right: 50),
            child: TextFormField(
                obscureText: true,
                controller: pass2Controller,
                validator: (value) {
                  if (value.length < 8 ||
                      value.isEmpty ||
                      pass2Controller.text != passController.text) {
                    return "As senhas não coincidem!";
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Repita a senha",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1))),
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          SizedBox(height: 15),
          ButtonTheme(
              minWidth: 130.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.blueGrey[200],
                child: Text("CADASTRAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    )),
                onPressed: () async {
                  if (key.currentState.validate()) {
                    String email = loginController.text;
                    String name = nameController.text;
                    String lastname = lastNameController.text;
                    String username = usernameController.text;
                    String pass = passController.text;
                    var status = await register.saveUser(
                        email, name, lastname, username, pass);
                    print(status);
                    if (status != 'ok') {
                      AlertDialog(
                        title: Text(
                            "Não foi possível cadastrar, cheque sua conexão"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    } else {
                      AlertDialog(
                        title: Text(
                            "Usuário cadastrado com sucesso, faça login para continuar!"),
                        actions: [
                          FlatButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, "/login");
                              },
                              child: Text("OK"))
                        ],
                      );
                    }
                    return null;
                  }
                },
              )),
        ])),
  );
}
