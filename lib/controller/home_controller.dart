import 'package:get_x/get_rx/get_rx.dart';
import 'package:get_x/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;
  void increment() {
    counter++;
  }

  void dncrement() {
    counter--;
  }
}
