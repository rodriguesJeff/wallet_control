import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:wallet/src/model/userModel.dart';

part 'register.g.dart';

BaseOptions option = BaseOptions(
  baseUrl: "http://192.168.1.5:9900/api/",
  connectTimeout: 5000
);
Dio dio = Dio(option);

class Register = RegisterBase with _$Register;

abstract class RegisterBase with Store {
  @observable
  String email = "";

  @observable 
  String name = "";

  @observable 
  String username = "";

  @observable 
  String pass = "";

  @observable 
  Response response = Response();

  @action
  saveUser(email, name, username, pass) async {
    var user = User.fromJson({
      "email": email,
      "name": name,
      "username": username,
      "pass": pass
    });
    response = await dio.post("/users", data: user);
  }
}