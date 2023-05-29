import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

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
                  Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                        padding: const EdgeInsets.all(50),
                        child: const Text(
                          "Bottom Sheet Body ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      enterBottomSheetDuration: const Duration(seconds: 10),
                      exitBottomSheetDuration: const Duration(seconds: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Colors.green,
                          )));
                },
                child: const Text(
                  "Show BottomSheet",
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
