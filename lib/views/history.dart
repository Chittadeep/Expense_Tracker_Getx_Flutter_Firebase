import 'package:expense_tracker/controller/expenseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionHistory extends GetView<ExpenseController> {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpenseController>(builder: (context) {
      return controller.expenses.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, i) {
                String expenseDescription = controller.expenses[i].description;
                String expenseAmount = controller.expenses[i].amount.toString();
                String expenseDate = controller.expenses[i].dateTime.toString();
                return ListTile(
                  title: Text(expenseDate),
                  subtitle: Text(expenseAmount),
                );
              },
              itemCount: controller.expenses.length,
            )
          : const Center(child: Text("No expenses added"));
    });
  }
}
