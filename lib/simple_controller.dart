import 'package:get/get.dart';

class SimpleController extends GetxController {
  int count = 0;

  void increment() => count++;

  void refreshView() => update();
}
