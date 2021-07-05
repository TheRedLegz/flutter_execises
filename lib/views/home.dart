import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exercise/controllers/counter_controller.dart';
import 'package:getx_exercise/views/other.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: ${counterController.counter.value}"),
              ElevatedButton(
                onPressed: () {
                  Get.to(OtherPage());
                },
                child: Text("Open Other Screen"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
