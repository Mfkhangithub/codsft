import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../Res/Component/Color.dart';
import 'expense_model.dart';

class Item extends StatelessWidget {
  final ExpenseModel expense;
  final VoidCallback onDelete;

  const Item({
    Key? key,
    required this.expense,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 9,
        bottom: 7,
        left: 12,
        right: 11,
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 0.4),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(11.5),
          ),
          color: AppColors.whitecolor,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 35,
              width: 35,
              child: expense.isIncome
                  ? Image.asset("assets/income.png")
                  : Image.asset("assets/expense.png"),
            ),
            const SizedBox(width: 17),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.item,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  DateFormat.yMMMMd().format(expense.date),
                  style: const TextStyle(
                    fontSize: 14.7,
                    color: AppColors.greycolor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$${expense.amount}",
              style: TextStyle(
                fontSize: 20.5,
                color: expense.isIncome ? AppColors.greencolor : AppColors.redcolor
                ,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
