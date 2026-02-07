// import 'package:get_x/get_state_manager/get_state_manager.dart';

// class HomeController extends GetxController {
//   int counter1 = 0;
//   int counter2 = 0;

//   void incrementone() {
//     counter1++;
//     update();
//   }

//   void dncrementone() {
//     counter1--;
//     update();
//   }

//   void incrementtwo() {
//     counter2++;
//     update();
//   }

//   void dncrementtwo() {
//     counter2--;
//     update();
//   }

//   int get sum => counter1 + counter2;
// }

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Rebuildcontroller extends GetxController {
  final counter1 = 0.obs;
  final counter2 = 0.obs;
  void incrementone() {
    counter1.value++;
  }

  void dncrementone() {
    counter1.value--;
  }

  void incrementtwo() {
    counter2.value++;
  }

  void dncrementtwo() {
    counter2.value--;
  }

  int get sum => counter1.value + counter2.value;
}
