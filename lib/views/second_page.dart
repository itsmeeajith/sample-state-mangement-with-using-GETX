import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../controller/number_controller.dart';

class SecondPage extends StatelessWidget {
  final NumberController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Second page'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: _controller.numbers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_controller.numbers[index].toString()),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _controller.increment();
        },
      ),
    );
  }
}
