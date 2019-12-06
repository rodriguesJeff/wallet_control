// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Register on RegisterBase, Store {
  final _$emailAtom = Atom(name: 'RegisterBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$nameAtom = Atom(name: 'RegisterBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$usernameAtom = Atom(name: 'RegisterBase.username');

  @override
  String get username {
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$passAtom = Atom(name: 'RegisterBase.pass');

  @override
  String get pass {
    _$passAtom.context.enforceReadPolicy(_$passAtom);
    _$passAtom.reportObserved();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.context.conditionallyRunInAction(() {
      super.pass = value;
      _$passAtom.reportChanged();
    }, _$passAtom, name: '${_$passAtom.name}_set');
  }

  final _$responseAtom = Atom(name: 'RegisterBase.response');

  @override
  Response get response {
    _$responseAtom.context.enforceReadPolicy(_$responseAtom);
    _$responseAtom.reportObserved();
    return super.response;
  }

  @override
  set response(Response value) {
    _$responseAtom.context.conditionallyRunInAction(() {
      super.response = value;
      _$responseAtom.reportChanged();
    }, _$responseAtom, name: '${_$responseAtom.name}_set');
  }

  final _$saveUserAsyncAction = AsyncAction('saveUser');

  @override
  Future saveUser(dynamic email, dynamic name, dynamic username, dynamic pass) {
    return _$saveUserAsyncAction
        .run(() => super.saveUser(email, name, username, pass));
  }
}
