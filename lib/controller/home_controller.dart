import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    // تم تصحيح الاسم
    counter--;
    update();
  }

  @override
  void onInit() {
    print("ontnit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  int get sum => counter;
}
