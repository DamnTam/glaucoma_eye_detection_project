import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';
import 'Home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 7  ),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => MyApp())));

    return Scaffold(
      backgroundColor: const Color.fromARGB(184, 0, 0, 0),
      body: Center(child: Lottie.asset("assets/83009-spying-eye.json")),
    );
  }
}
