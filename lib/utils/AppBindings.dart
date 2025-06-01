import 'package:expense_tracker/controller/categoryManagementController.dart';
import 'package:expense_tracker/controller/expenseController.dart';
import 'package:expense_tracker/controller/homeController.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Initialize all your controllers here
    Get.put(CategoryManagementController());
    Get.put(ExpenseController());
    Get.put(HomeController());
    // Add more controllers as needed
  }
}
