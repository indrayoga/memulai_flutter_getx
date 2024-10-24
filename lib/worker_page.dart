import 'package:belajar_flutterx/worker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerPage extends StatelessWidget {
  // const WorkerPage({super.key});
  final workerController = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Worker GETX"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() =>
                Text("Jumlah Karakter : ${workerController.count.value}")),
            TextField(
              onChanged: (Value) => workerController.change(),
              decoration: InputDecoration(
                labelText: "data",
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
