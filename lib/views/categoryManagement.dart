import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expense_tracker/controller/categoryManagementController.dart';

class CategoryManagement extends StatelessWidget {
  CategoryManagement({super.key});

  final CategoryManagementController controller =
      Get.put(CategoryManagementController());
  final TextEditingController _categoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Category List - Now properly constrained
            Expanded(
              child: GetBuilder<CategoryManagementController>(
                builder: (controller) {
                  return controller.categories.isEmpty
                      ? const Center(child: Text('No categories added yet'))
                      : ListView.builder(
                          itemCount: controller.categories.length,
                          itemBuilder: (context, index) {
                            final category = controller.categories[index];
                            return Card(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              child: ListTile(
                                title: Text(category),
                                trailing: IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
                                    onPressed:
                                        () {} //=> controller.removeCategory(category),
                                    ),
                              ),
                            );
                          },
                        );
                },
              ),
            ),

            // Add Category Form
            Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _categoryController,
                      decoration: const InputDecoration(
                        labelText: 'New Category',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a category name';
                        }
                        if (controller.categories.contains(value.trim())) {
                          return 'Category already exists';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                      onTap: _addCategory,
                      child: const Icon(
                        Icons.add,
                        size: 60,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addCategory() {
    if (_formKey.currentState!.validate()) {
      controller.addCategory(_categoryController.text.trim());
      _categoryController.clear();
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
