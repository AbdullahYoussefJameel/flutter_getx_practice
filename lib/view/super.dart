import 'package:flutter/material.dart';

class Super extends StatelessWidget {
  Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('super ')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Text("super"))],
        ),
      ),
    );
  }
}
