import 'dart:async';
import 'dart:core';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:wallet/src/model/user_model.dart';

import '../../core.dart';

part 'register.g.dart';

class Register = RegisterBase with _$Register;

abstract class RegisterBase with Store {
  @observable
  String email = "";
  String name = "";
  String username = "";
  String lastname = "";
  String pass = "";
  Dio dio = Dio();

  @action
  Future saveUser(email, name, lastname, username, pass) async {
    var _user = User.fromJson({
      "email": email,
      "name": name,
      "lastname": lastname,
      "username": username,
      "pass": pass
    });
    var res =
        await dio.post(Core.baseurl + '/register', data: _user);

    if (res.statusCode != 200) {
      print('deu erro');
      return null;
    } else {
      var status = 'ok';
      return status;
    }
  }
}
