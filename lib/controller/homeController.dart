import 'package:get/get.dart';

class HomeController extends GetxController {
  int _index = 0;

  void updateindex(int i) {
    _index = i;
    update();
  }

  int get index => _index;
}
