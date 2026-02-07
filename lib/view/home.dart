import 'package:flutter/material.dart';

import 'package:get_x/get.dart';

import 'package:getx/controller/home_controller.dart';
import 'package:getx/view/pagethree.dart';

import 'package:getx/view/pagetwo.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(() => Pageone()),
              child: const Text("Page One"),
            ),
            ElevatedButton(
              onPressed: () {}, // => Get.to(() => paget()),
              child: const Text("Page Two"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(() => pagethree()),
              child: const Text("Page Three"),
            ),
            ElevatedButton(
              onPressed: () {}, // => Get.to(() => ()),
              child: const Text("Page Four"),
            ),
          ],
        ),
      ),
    );
  }
}
