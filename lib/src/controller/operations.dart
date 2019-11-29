import 'package:mobx/mobx.dart';

part 'operations.g.dart';

class Operations = OperationsBase with _$Operations;

abstract class OperationsBase with Store {
  @observable 
  double _balance = 0;
  getBalance() => _balance;

  @observable
  double _creditTotal = 0;
  getCredit() => _creditTotal;

  @observable
  double _debitTotal = 0;
  getDebit() => _debitTotal;

  @action 
  void credit(value){
    _balance = _balance + value;
    _creditTotal = _creditTotal + value;
  }

  @action 
  void debit(value) {
    _balance = _balance - value;
    _debitTotal = _debitTotal + value;
  }
}
