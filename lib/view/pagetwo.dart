import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_state_manager/src/simple/get_state.dart';
import 'package:getx/controller/home_controller.dart';

class Pagetwo extends StatelessWidget {
  Pagetwo({super.key});

  // final HomeController controller = Get.put(HomeController());
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Two')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GetBuilder<HomeController>(
                init:
                    HomeController(), //if you dont make Get.put(HomeController());
                builder: (Controller) =>
                    Text("${Controller.sum}", style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
