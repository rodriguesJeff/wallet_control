// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login on LoginBase, Store {
  final _$emailAtom = Atom(name: 'LoginBase.email');

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

  final _$passAtom = Atom(name: 'LoginBase.pass');

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
}
