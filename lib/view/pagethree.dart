import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:getx/controller/rebuildcontroller.dart';

class pagethree extends StatelessWidget {
  pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page thr')),
      body: ListView(
        children: [
          Center(
            child: GetX<Rebuildcontroller>(
              init: Rebuildcontroller(), // ← هنا فقط
              builder: (controller) {
                return Text(
                  "${controller.counter1.value}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetX<Rebuildcontroller>(
              builder: (controller) {
                return Text(
                  "${controller.counter2.value}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          Center(
            child: GetX<Rebuildcontroller>(
              builder: (controller) {
                return Text(
                  "${controller.sum}",
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.find<Rebuildcontroller>().incrementone();
            },
            child: const Text("Increment From Button"),
          ),
          MaterialButton(
            onPressed: () {
              Get.find<Rebuildcontroller>().incrementtwo();
            },
            child: const Text("Increment From Button"),
          ),
        ],
      ),
    );
  }
}
