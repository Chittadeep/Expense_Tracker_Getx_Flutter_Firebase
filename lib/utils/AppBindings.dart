import 'package:expense_tracker/controller/categoryManagementController.dart';
import 'package:expense_tracker/controller/expenseController.dart';
import 'package:expense_tracker/controller/homeController.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Initialize all your controllers here
    Get.lazyPut(()=>CategoryManagementController(), fenix: true);
    Get.lazyPut(()=>ExpenseController(), fenix: true);
    Get.lazyPut(()=>HomeController(), fenix: true);
    // Add more controllers as needed
  }
}
