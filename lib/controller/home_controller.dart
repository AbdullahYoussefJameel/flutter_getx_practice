import 'package:get_x/get_state_manager/get_state_manager.dart';

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
