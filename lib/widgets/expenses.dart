import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  // Dummy expense data
  final List<Expense> _registeredExpenses = [
    // 1st data
    Expense(
      title: 'Flutter Course',
      amount: 2000,
      category: Category.work,
      date: DateTime.now(),
    ),
    // 2nd data
    Expense(
      title: 'Cinema',
      amount: 500,
      category: Category.leisure,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
