import 'package:get/get.dart';

class CategoryManagementController extends GetxController {
  final List<String> _categories = [];

  void addCategory(String category) {
    _categories.add(category);
    update();
  }

  List<String> get categories => _categories;
}
