import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
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
                  Get.snackbar("title", "message",
                      colorText: Colors.white,
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 5),
                      borderWidth: 5,
                      borderColor: Colors.amber,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.black,
                        ),
                      ],
                      titleText: Row(
                        children: [
                          const Icon(Icons.add),
                          const Text("add number")
                        ],
                      ));
                },
                child: const Text(
                  "Show SnackBar",
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
