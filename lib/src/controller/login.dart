import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:wallet/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login.g.dart';

class Login = LoginBase with _$Login;

abstract class LoginBase with Store {
  @observable
  String email = "";
  String pass = "";
  Dio dio = Dio();

  @action
  Future<String> autentic(email, pass) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map _params = {'email': email, 'pass': pass};
    var _data = json.encode(_params);
    Response res = await dio.post(Core.baseurl + '/login', data: _data);

    var status = res.statusCode;

    switch (status) {
      case 200:
        prefs.setString('token', res.data['token']);
        String jwt = res.data['token'];
        return jwt;
        break;
      case 404:
        return null;
        break;
      case 503:
        return null;
        break;
      default:
        return null;
    }
  }
}
