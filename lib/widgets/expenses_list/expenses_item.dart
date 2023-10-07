import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            // Title
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                // Amount
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Category
                    // TODO: Change icon to calegory dynamically
                    const Icon(Icons.alarm),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
