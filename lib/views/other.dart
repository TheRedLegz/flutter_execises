import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exercise/controllers/counter_controller.dart';

class OtherPage extends StatelessWidget {
  OtherPage({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The screen has been clicked ${_counterController.counter.value} times"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Open Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
