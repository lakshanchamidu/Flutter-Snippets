import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DemoPage1 extends StatefulWidget{
  const DemoPage1 ({super.key});

  @override
  State<DemoPage1> createState() => _DemoPage1();
}

class _DemoPage1 extends State<DemoPage1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF0C23A6), // Blue background matching animation
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            'lib/assests/Splash_screen.json',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
      ),
    );
  }
}