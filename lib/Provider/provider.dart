import 'package:flutter/foundation.dart';

import '../Model/expense_model.dart';


class YourProvider extends ChangeNotifier {
  List<ExpenseModel> expenses = [];
  int totalMoney = 0;
  int spentMoney = 0;
  int income = 0;

  // Add methods to handle state changes

  void addExpense(ExpenseModel expense) {
    expenses.add(expense);
    if (expense.isIncome) {
      income += expense.amount;
      totalMoney += expense.amount;
    } else {
      spentMoney += expense.amount;
      totalMoney -= expense.amount;
    }
    notifyListeners();
  }

  void deleteExpense(ExpenseModel expense) {
    if (expense.isIncome) {
      income -= expense.amount;
      totalMoney -= expense.amount;
    } else {
      spentMoney -= expense.amount;
      totalMoney += expense.amount;
    }
    expenses.remove(expense);
    notifyListeners();
  }
}
