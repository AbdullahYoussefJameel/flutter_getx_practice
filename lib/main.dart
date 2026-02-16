import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
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

=======
=======
>>>>>>> origin/master
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:getx/Services/Servicesstting.dart';
import 'package:getx/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

Future<void> initialservices() async {
  await Get.putAsync(() => Servicesstting().Init());
}

<<<<<<< HEAD
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
>>>>>>> origin/master
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
=======
>>>>>>> origin/master
      title: "GetX App",
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () =>  Home()),
<<<<<<< HEAD
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
>>>>>>> origin/master
      ],
    );
  }
}
