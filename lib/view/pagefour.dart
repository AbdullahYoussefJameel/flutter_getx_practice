// import 'package:flutter/material.dart';
// import 'package:get_x/get.dart';
// import 'package:get_x/get_core/src/get_main.dart';
// import 'package:get_x/get_state_manager/src/simple/get_state.dart';
// import 'package:getx/controller/rebuildcontroller.dart';

// class Pagefour extends StatelessWidget {
//   Pagefour({super.key});

//   // Remove Get.put
//   // final RebuildController controller = Get.put(RebuildController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Page Four')),
//       body: ListView(
//         children: [
//           Center(
//             child: GetBuilder<Rebuildcontroller>(
//               init: Rebuildcontroller(), // ← إنشاء الكنترولر هنا
//               builder: (controller) {
//                 return Text(
//                   "${controller.counter1}",
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ),
//           Center(
//             child: GetBuilder<Rebuildcontroller>(
//               builder: (controller) {
//                 return Text(
//                   "${controller.counter2}",
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ),
//           Center(
//             child: GetBuilder<Rebuildcontroller>(
//               builder: (controller) {
//                 return Text(
//                   "${controller.sum}",
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ),

//           ElevatedButton(
//             onPressed: () {
//               Get.find<Rebuildcontroller>().incrementone();
//             },
//             child: const Text("Increment Counter 1"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Get.find<Rebuildcontroller>().incrementtwo();
//             },
//             child: const Text("Increment Counter 2"),
//           ),
//         ],
//       ),
//     );
//   }
// }
