// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Operations on OperationsBase, Store {
  final _$_balanceAtom = Atom(name: 'OperationsBase._balance');

  @override
  double get _balance {
    _$_balanceAtom.reportRead();
    return super._balance;
  }

  @override
  set _balance(double value) {
    _$_balanceAtom.reportWrite(value, super._balance, () {
      super._balance = value;
    });
  }

  final _$_creditTotalAtom = Atom(name: 'OperationsBase._creditTotal');

  @override
  double get _creditTotal {
    _$_creditTotalAtom.reportRead();
    return super._creditTotal;
  }

  @override
  set _creditTotal(double value) {
    _$_creditTotalAtom.reportWrite(value, super._creditTotal, () {
      super._creditTotal = value;
    });
  }

  final _$_debitTotalAtom = Atom(name: 'OperationsBase._debitTotal');

  @override
  double get _debitTotal {
    _$_debitTotalAtom.reportRead();
    return super._debitTotal;
  }

  @override
  set _debitTotal(double value) {
    _$_debitTotalAtom.reportWrite(value, super._debitTotal, () {
      super._debitTotal = value;
    });
  }

  final _$totalAtom = Atom(name: 'OperationsBase.total');

  @override
  double get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(double value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$OperationsBaseActionController =
      ActionController(name: 'OperationsBase');

  @override
  void credit(dynamic value) {
    final _$actionInfo = _$OperationsBaseActionController.startAction(
        name: 'OperationsBase.credit');
    try {
      return super.credit(value);
    } finally {
      _$OperationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void debit(dynamic value) {
    final _$actionInfo = _$OperationsBaseActionController.startAction(
        name: 'OperationsBase.debit');
    try {
      return super.debit(value);
    } finally {
      _$OperationsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total}
    ''';
  }
}
