import 'package:expense_tracker/controller/homeController.dart';
import 'package:expense_tracker/views/categoryManagement.dart';
import 'package:expense_tracker/views/expenseInput.dart';
import 'package:expense_tracker/views/history.dart';
import 'package:expense_tracker/views/summaryReport.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<BottomNavigationBarItem> navigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'History'),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Transaction'),
    BottomNavigationBarItem(icon: Icon(Icons.summarize), label: 'Summary')
  ];

  List<StatelessWidget> views = const [
    TransactionHistory(),
    Categorymanagement(),
    ExpenseInput(),
    SummaryReport()
  ];

  @override
  Widget build(BuildContext context) {
    Homecontroller controller = Get.put(Homecontroller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.getIndex(),
          onTap: (value) => controller.updateIndex(value),
          items: navigationBarItems),
      body: Obx(() => views[controller.getIndex()]),
    );
  }
}
