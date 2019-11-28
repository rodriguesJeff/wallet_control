import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/src/controller/addrem.dart';

import 'package:wallet/src/ui/home.dart';
import 'package:wallet/src/ui/login.dart';
import 'package:wallet/src/ui/register.dart';

void main() {
  runApp(
      ChangeNotifierProvider<Operations>(
          builder: (_) => Operations(0),
          child: MaterialApp(
            title: "MyWallet",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Montserrat'
            ),
            home: LoginPage(),
            routes: {
              "/register" : (context) => RegisterPage(),
              "/login" : (context) => LoginPage(),
              "/home" : (context) => HomePage(),
            },
          ),
        ),
      
    );
}