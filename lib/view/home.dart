import 'package:flutter/material.dart';
import 'package:get_x/route_manager.dart';
import 'package:getx/view/pagetwo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // Get.toNamed("/pageone");
                  //Get.to(() => Pageone());//push normal
                  //   Get.off(() => Pageone()); //push replasment name delete only last page
                  Get.offNamed("/pageone");
                  //Get.offAllNamed('pageone');
                  //Get.offAll(() => Pageone()); // pushh off all delete all page
                },
                child: const Text('Page One'),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.to(() => const Pagetwo());
                },
                child: const Text('Page two'),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text('back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
