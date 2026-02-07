import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';

import 'package:getx/controller/home_controller.dart';

class Pageone extends StatelessWidget {
  Pageone({super.key});
  //   final c = Get.lazyPut(
  //     () => HomeController(), // only on time call
  //     // fenix: true, //call and delete data
  //   );

  //   final HomeController controller = Get.put(
  //     HomeController(),
  //     permanent: false,
  //   ); //Dependency Injection
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page one')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.add, size: 40),
                    onPressed: () {
                      controller.increment();
                    },
                  ),
                ),
                Center(
                  child: GetBuilder<HomeController>(
                    builder: (controller) => Text(
                      "${controller.sum}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.remove, size: 40),
                    onPressed: () {
                      controller.dncrement();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
