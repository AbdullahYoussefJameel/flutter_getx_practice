import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:getx/main.dart';

class Admin extends StatelessWidget {
  Admin({super.key});

  // final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('admin ')),
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
          ],
        ),
      ),
    );
  }
}
