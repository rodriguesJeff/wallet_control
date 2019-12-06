import 'package:mobx/mobx.dart';

part 'login.g.dart';


class Login = LoginBase with _$Login;

abstract class LoginBase with Store {
  @observable
  String email = "";

  @observable 
  String pass = "";

  @action
  autentic(email, pass){
    if (email == "jeff@teste.com" && pass == "12345678"){
      return true;
    }
    return false;
  }
}