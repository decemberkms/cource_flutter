import 'package:app05/widget/new_expense.dart';
import 'package:flutter/material.dart';

import 'package:app05/widget/expenses_list.dart';
import 'package:app05/model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'asian food',
      amount: 88.12,
      date: DateTime.now(),
      category: Category.food,
    )
  ];

  void _openAddExpenseOveraly() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _addExpense),
        isScrollControlled: true);
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No Expenses yet.'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Note"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOveraly,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Hello world!"),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
