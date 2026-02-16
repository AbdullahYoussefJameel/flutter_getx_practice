import 'package:flutter/material.dart';

class Pageone extends StatelessWidget {
  Pageone({super.key});
  //   final c = Get.lazyPut(
  //     () => HomeController(), // only on time call
  //     // fenix: true, //call and delete data
  //   );

  //   final HomeController controller = Get.put(
  //     HomeController(),
  //     permanent: false,
  //   ); //Dependency Injection

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text('Page one')),
      body: Container(),
    );
  }
}
