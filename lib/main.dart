import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx/middleware/auth_middleware.dart';
import 'package:getx/middleware/super_middleware.dart';
import 'package:getx/view/admin.dart';

import 'package:getx/view/home.dart';
import 'package:getx/view/login.dart';
import 'package:getx/view/super.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPrefrences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefrences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX",
      theme: ThemeData(primaryColor: Colors.blue),

      getPages: [
        GetPage(
          name: '/',
          page: () => Login(),
          middlewares: [AuthMiddleware(), SuperMiddleware()],
        ),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/admin', page: () => Admin()),
        GetPage(name: '/Super', page: () => Super()),
      ],
    );
  }
}
