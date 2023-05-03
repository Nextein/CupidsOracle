import 'package:flutter/material.dart';
import 'package:cupidsoracle/layout.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Layout()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Cupid's Oracle",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
