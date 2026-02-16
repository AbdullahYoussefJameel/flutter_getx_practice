import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import 'package:getx/main.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // final HomeController controller = Get.put(HomeController());
=======
=======
>>>>>>> origin/master
import 'package:get/state_manager.dart';
import 'package:getx/Services/Servicesstting.dart';
class Home extends GetView<Servicesstting> {
  const Home({super.key});
<<<<<<< HEAD
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
>>>>>>> origin/master

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
<<<<<<< HEAD
      appBar: AppBar(title: const Text('home ')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedPrefrences!.clear();
                    Get.offNamed("/");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "sign out",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
=======
=======
>>>>>>> origin/master
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // استخدم Obx لأن الخدمة محقونة مسبقاً (Permanent)
            Obx(() => Text(
              "${controller.counter.value}",
              style: TextStyle(fontSize: 30),
            )),
            
            MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                controller.increase();
              },
              child: const Text("Counter Increase"),
            ),
                MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                controller.sharedPrefrences.clear();
              },
              child: const Text("clear SheredPrefncwe"),
            )
<<<<<<< HEAD
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
>>>>>>> origin/master
          ],
        ),
      ),
    );
  }
}
