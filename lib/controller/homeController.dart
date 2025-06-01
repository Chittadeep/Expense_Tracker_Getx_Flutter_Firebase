import 'package:get/get.dart';

class Homecontroller extends GetxController {
  RxInt index = 0.obs;

  updateIndex(int i) {
    index.value = i;
  }

  int getIndex() {
    return index.value;
  }
}
