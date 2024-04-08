import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:state_management_getx/views/second_page.dart';

import '../controller/number_controller.dart';

class FirstPage extends StatelessWidget {
  final NumberController _controller = Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('First page'),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(SecondPage());
            },
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
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
        child: Icon(Icons.add),
        onPressed: () {
          _controller.increment();
        },
      ),
    );
  }
}
