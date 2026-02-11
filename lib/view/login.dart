import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import 'package:getx/main.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login ')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedPrefrences!.setString("role", 'user');
                    Get.offNamed("/home");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Go To Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(height: 30),
            Center(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    sharedPrefrences!.setString("role", 'admin');
                    Get.offNamed("/admin");
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Go To admin",
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
