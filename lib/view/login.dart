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
<<<<<<< HEAD
<<<<<<< HEAD
                    sharedPrefrences!.setString("role", 'user');
=======
                  //  sharedPrefrences!.setString("role", 'user');
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
                  //  sharedPrefrences!.setString("role", 'user');
>>>>>>> origin/master
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
<<<<<<< HEAD
<<<<<<< HEAD
                    sharedPrefrences!.setString("role", 'admin');
=======
                    // sharedPrefrences!.setString("role", 'admin');
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
                    // sharedPrefrences!.setString("role", 'admin');
>>>>>>> origin/master
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
