import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Servicesstting extends GetxService {
  late SharedPreferences sharedPrefrences; // استخدم late لضمان التعريف
  RxInt counter = 0.obs;

  Future<Servicesstting> Init() async {
    sharedPrefrences = await SharedPreferences.getInstance();
    counter.value = sharedPrefrences.getInt("counter") ?? 0;
    return this;
  }

  void increase() {
    counter.value++;
    sharedPrefrences.setInt("counter", counter.value);
  }
}