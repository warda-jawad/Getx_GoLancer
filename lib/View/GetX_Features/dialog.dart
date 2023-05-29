import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBar extends StatelessWidget {
  const SnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction to Getx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Title Dialog",
                      middleText: "Body Dialog",
                      cancel: Text("Cancel"),
                      confirm: Text("Confirm"),
                      onCancel: () {},
                      onConfirm: () {},
                      backgroundColor: Colors.red,
                      content: Column(
                        children: [Text("message "), Icon(Icons.add)],
                      ));
                },
                child: const Text(
                  "Show Dialog",
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
