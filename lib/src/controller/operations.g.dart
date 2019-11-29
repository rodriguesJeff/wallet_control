// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Operations on OperationsBase, Store {
  final _$_balanceAtom = Atom(name: 'OperationsBase._balance');

  @override
  double get _balance {
    _$_balanceAtom.context.enforceReadPolicy(_$_balanceAtom);
    _$_balanceAtom.reportObserved();
    return super._balance;
  }

  @override
  set _balance(double value) {
    _$_balanceAtom.context.conditionallyRunInAction(() {
      super._balance = value;
      _$_balanceAtom.reportChanged();
    }, _$_balanceAtom, name: '${_$_balanceAtom.name}_set');
  }

  final _$_creditTotalAtom = Atom(name: 'OperationsBase._creditTotal');

  @override
  double get _creditTotal {
    _$_creditTotalAtom.context.enforceReadPolicy(_$_creditTotalAtom);
    _$_creditTotalAtom.reportObserved();
    return super._creditTotal;
  }

  @override
  set _creditTotal(double value) {
    _$_creditTotalAtom.context.conditionallyRunInAction(() {
      super._creditTotal = value;
      _$_creditTotalAtom.reportChanged();
    }, _$_creditTotalAtom, name: '${_$_creditTotalAtom.name}_set');
  }

  final _$_debitTotalAtom = Atom(name: 'OperationsBase._debitTotal');

  @override
  double get _debitTotal {
    _$_debitTotalAtom.context.enforceReadPolicy(_$_debitTotalAtom);
    _$_debitTotalAtom.reportObserved();
    return super._debitTotal;
  }

  @override
  set _debitTotal(double value) {
    _$_debitTotalAtom.context.conditionallyRunInAction(() {
      super._debitTotal = value;
      _$_debitTotalAtom.reportChanged();
    }, _$_debitTotalAtom, name: '${_$_debitTotalAtom.name}_set');
  }

  final _$OperationsBaseActionController =
      ActionController(name: 'OperationsBase');

  @override
  void credit(dynamic value) {
    final _$actionInfo = _$OperationsBaseActionController.startAction();
    try {
      return super.credit(value);
    } finally {
      _$OperationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debit(dynamic value) {
    final _$actionInfo = _$OperationsBaseActionController.startAction();
    try {
      return super.debit(value);
    } finally {
      _$OperationsBaseActionController.endAction(_$actionInfo);
    }
  }
}
