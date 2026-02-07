import 'package:flutter/material.dart';

import 'package:get_x/get.dart';

import 'package:getx/controller/home_controller.dart';
import 'package:getx/view/pageone.dart';

import 'package:getx/view/pagetwo.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // final controller = Get.lazyPut(
  //   () => HomeController(), // only on time call

  //   fenix: true, //call and delete data
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Pageone());
                },
                child: const Text("Page One"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Pagetwo());
                },
                child: const Text("Page Two"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
