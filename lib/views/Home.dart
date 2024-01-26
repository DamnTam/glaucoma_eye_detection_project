import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import '../Widgets/AppDrawer.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late XFile _image;
  String _prediction = '';
  String url = '';

  void _getImage() async {
    var imagePicker = ImagePicker();
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image!;
    });
    _makePrediction();
  }

  void _makePrediction() async {
    setState(() {
      _prediction = 'loading';
    });
    try {
      var request = http.MultipartRequest("POST", Uri.parse(url));
      print("Url:$url");
      request.files
          .add(await http.MultipartFile.fromPath("image", _image.path));

      var response = await request.send();
      if (response.statusCode == 200) {
        var test = await response.stream.bytesToString();

        setState(() {
          _prediction = test;
        });
      } else {
        setState(() {
          _prediction = '';
        });
        print("An error occurred: ${response.statusCode}");
      }
    } catch (e) {
      setState(() {
        _prediction = '';
      });
      Get.snackbar("Error Occured", e.toString());

      print(e);
    }
  }

  void dialougeshow() {
    Get.defaultDialog(
      title: "Enter URL",
      titleStyle: const TextStyle(color: Colors.black),
      content: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              label: Text("Enter URL", style: TextStyle(color: Colors.black)),
              hintText: "Enter URL",
            ),
            //style: TextStyle(color: Colors.black),
            onChanged: (value) {
              setState(() {
                url = value;
              });
            },
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    Future(dialougeshow);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glaucoma Detection'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: _prediction == ''
            ? const Text('No image selected',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
            : _prediction == 'loading'
                ? Center(
                    child: Lottie.asset("assets/eye-scan.json"),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.file(
                        File(_image.path),
                        height: 250,
                        width: 250,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(_prediction,
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
