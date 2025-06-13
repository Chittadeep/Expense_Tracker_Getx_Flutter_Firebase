import 'dart:developer';

import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseController extends GetxController {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? selectedCategory;

  List<ExpenseModel> expenses = [];

  void setSelectedDate(DateTime date) {
    selectedDate = date;
    update();
  }

  void setSelectedTime(TimeOfDay time) {
    selectedTime = time;
    update();
  }

  void setSelectedCategory(String? category) {
    selectedCategory = category;
    update();
  }

  void clearSelections() {
    selectedDate = null;
    selectedTime = null;
    selectedCategory = null;
    update();
  }

  void addExpense({
    required String category,
    required String description,
    required double amount,
    required DateTime dateTime,
  }) {
    // Implement your expense saving logic here
    // This might involve adding to a database or state management
    expenses.add(ExpenseModel(category, amount, description, dateTime));
    log('Expense added: $description, $amount, $dateTime, $selectedCategory');
    update();
  }
}
