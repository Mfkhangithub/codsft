class ExpenseModel{
  // String id;
  String item;
  int amount;
  bool isIncome;
  DateTime date;

  ExpenseModel({
    // required this.id,
    required this.item,
    required this.amount,
    required this.isIncome,
    required this.date,
  });
}