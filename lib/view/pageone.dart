// import 'package:flutter/material.dart';
// import 'package:get_x/get.dart';
// import 'package:getx/controller/home_controller.dart';

// class Pageone extends StatelessWidget {
//   Pageone({super.key});

//   final HomeController controller = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Page one')),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Center(
//           child: GetBuilder<HomeController>(
//             builder: (controller) {
//               print("ReBuild ");
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: IconButton(
//                       icon: const Icon(Icons.add, size: 40),
//                       onPressed: controller.in,
//                     ),
//                   ),
//                   Text(
//                     '${controller.counter1}',
//                     style: const TextStyle(fontSize: 30),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: IconButton(
//                       icon: const Icon(Icons.remove, size: 40),
//                       onPressed: controller.dncrementone,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
