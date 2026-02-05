import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:get_x/get_state_manager/get_state_manager.dart';
import 'package:getx/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page one')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      icon: Icon(Icons.add, size: 40),
                      onPressed: () {
                        controller.increment();
                      },
                    ),
                  ),
                  Center(
                    child: Text(
                      "${controller.counter.value}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      icon: Icon(Icons.remove, size: 40),
                      onPressed: () {
                        controller.dncrement();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
