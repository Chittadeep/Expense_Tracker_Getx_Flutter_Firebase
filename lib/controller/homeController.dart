import 'package:get/get.dart';

class Homecontroller extends GetxController {
  int _index = 0;

  void updateindex(i) {
    _index = i;
    update();
  }

  get index => _index;
}
