import 'dart:async';

import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

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
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Center(
                child: Lottie.network(
                    "https://assets4.lottiefiles.com/packages/lf20_iuypycqi.json"),
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Column(
              children: [
                Container(
                  child: Text("Calculator", style: TextStyle(fontSize: 40)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Made By Saksham"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
