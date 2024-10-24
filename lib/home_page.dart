import 'package:belajar_flutterx/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final homeController = Get.put(HomeController());

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
            Obx(() => Text(
                  "${homeController.count.value}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                homeController.increment();
              },
              child: Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}
