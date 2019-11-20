import 'package:flutter/material.dart';

import 'package:wallet/src/ui/login.dart';
import 'package:wallet/src/ui/register.dart';
import 'package:wallet/src/ui/home.dart';


class Routes {
  var routes = <String, WidgetBuilder>{
    "/register" : (BuildContext context) => RegisterPage(),
    "/login" : (BuildContext context) => LoginPage(),
    "/home" : (BuildContext context) => HomePage(),
  };

  Routes() {
    runApp(
      MaterialApp(
        title: "MyWallet",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primarySwatch: Colors.white,
          //primaryColor: Colors.white,
          fontFamily: 'Montserrat'
        ),
        home: LoginPage(),
        routes: routes,
      ),
    );
  }
}