


import 'package:hive/hive.dart';

import '../../Model/expense_model.dart';



class Boxes {
  static Box<ExpenseModel> getData() => Hive.box<ExpenseModel>('nodes');
}

