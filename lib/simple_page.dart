import 'package:belajar_flutterx/simple_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimplePage extends StatelessWidget {
  final simpleController = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<SimpleController>(
              builder: (controller) {
                return Text(
                  "${simpleController.count}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                simpleController.increment();
              },
              child: Text("+"),
            ),
            ElevatedButton(
              onPressed: () {
                simpleController.refreshView();
              },
              child: Text("Reresh"),
            ),
          ],
        ),
      ),
    );
  }
}
