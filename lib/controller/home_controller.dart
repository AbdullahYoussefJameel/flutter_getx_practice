import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void dncrement() {
    counter--;
    update();
  }

  int get sum => counter;
}
