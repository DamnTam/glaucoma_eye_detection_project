//   import 'package:flutter/material.dart';

// void dialougeshow() {

//     Get.defaultDialog(
//         title: "Enter Url",
//         titleStyle: const TextStyle(color: Colors.black),
//         content: Column(
//           children: [
//             TextField(
//                 decoration: const InputDecoration(
//                     label: Text("Enter Url"), hintText: "Enter Url"),
//                 onChanged: (value) {
//                   setState(() {
//                     url = value;
//                   });
//                 }),
//             TextButton(
//                 onPressed: () {
//                   Get.back();
//                 },
//                 child: const Text("Submit"))
//           ],
//         ));
//   }