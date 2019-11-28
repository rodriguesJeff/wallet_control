import 'package:flutter/material.dart';

class Operations with ChangeNotifier {
  double _value = 0;
  double debit = 0;
  double credit = 0;

  Operations(this._value);

  getValue() => _value;
  getDebit() => debit;
  getCredit() => credit;

  setValue(double value) => _value = value;

  void creditValue(double credit) {
    _value = _value + credit;
    credit = credit + credit;
    notifyListeners();
  }

  void debitValue(double debit) {
    _value = _value - debit;
    debit = debit + debit;
    notifyListeners();
  }

}