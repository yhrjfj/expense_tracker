import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  // Dummy expense data
  final List<Expense> _registered1Expenses = [
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
    return const Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('Expenses list'),
        ],
      ),
    );
  }
}
