import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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
      amount: 20,
      category: Category.work,
      date: DateTime.now(),
    ),
    // 2nd data
    Expense(
      title: 'Cinema',
      amount: 10,
      category: Category.leisure,
      date: DateTime.now(),
    ),
  ];

  // Add expense methods
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => NewExpense(
        onAddExpense: _addExpense,
      ),
      // constraints: BoxConstraints.expand(width: double.infinity),
    );
  }

  // Add new expense list in main list
  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  // Remove an expense form the main list
  void _removeExpense(Expense expense) {
    _registeredExpenses.remove(expense);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Title bar with add button
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),

      //Information which has been added by user
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
              onRemoveExpense: _removeExpense,
            ),
          ),
        ],
      ),
    );
  }
}
