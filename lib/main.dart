import 'package:flutter/material.dart';
import 'package:get_x/get_navigation/src/root/get_material_app.dart';
import 'package:get_x/get_navigation/src/routes/index.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'flutter demo',
      home: Home(),
      getPages: [
        GetPage(name: "/pageone", page: () => Pageone()),
        GetPage(name: "/pageone", page: () => Pageone()),
      ],
    );
  }
}
