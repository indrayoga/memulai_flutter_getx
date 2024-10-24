import 'package:get/get.dart';

class WorkerController extends GetxController {
  RxInt count = 0.obs;
  void change() => count++;

  late Worker _ever;
  @override
  void onInit() {
    _ever = ever(count, (_) => print("$_ has been changed (ever)"));
    super.onInit();
    // TODO: implement onInit
    // ever(count, (item) => print('dfdf'));
    // once(count, (item) => print('dfdf'));
    // debounce(
    //   count,
    //   (item) => print('dfdf'),
    //   time: Duration(seconds: 2),
    // );
  }
}
