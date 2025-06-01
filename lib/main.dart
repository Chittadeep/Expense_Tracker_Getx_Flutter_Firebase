import 'package:expense_tracker/utils/AppBindings.dart';
import 'package:expense_tracker/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      home: Home(),
      initialBinding: AppBindings(),
      theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.purple),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.purple, foregroundColor: Colors.white),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(color: Colors.black),
          )),
    );
  }
}
