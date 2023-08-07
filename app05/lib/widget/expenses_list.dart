import 'package:app05/model/expense.dart';
import 'package:app05/widget/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: Theme.of(context).cardTheme.margin,
        ),
        key: ValueKey(expenses[idx]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[idx]);
        },
        child: ExpenseItem(expense: expenses[idx]),
      ),
    );
  }
}
