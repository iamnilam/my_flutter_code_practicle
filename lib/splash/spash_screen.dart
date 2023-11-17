

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ws_code_practicle/dialogbox/dialogbox.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home' );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.accessibility_sharp, color: Colors.white,),
            SizedBox(
              height: 30,
            ),
            Text("Nilam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,),)
          ],
        ),
      ),
    );
  }
}
