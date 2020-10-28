// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Register on RegisterBase, Store {
  final _$emailAtom = Atom(name: 'RegisterBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$saveUserAsyncAction = AsyncAction('RegisterBase.saveUser');

  @override
  Future saveUser(dynamic email, dynamic name, dynamic lastname,
      dynamic username, dynamic pass) {
    return _$saveUserAsyncAction
        .run(() => super.saveUser(email, name, lastname, username, pass));
  }

  @override
  String toString() {
    return '''
email: ${email}
    ''';
  }
}
