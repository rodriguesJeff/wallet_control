// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login on LoginBase, Store {
  final _$emailAtom = Atom(name: 'LoginBase.email');

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

  final _$autenticAsyncAction = AsyncAction('LoginBase.autentic');

  @override
  Future<String> autentic(dynamic email, dynamic pass) {
    return _$autenticAsyncAction.run(() => super.autentic(email, pass));
  }

  @override
  String toString() {
    return '''
email: ${email}
    ''';
  }
}
