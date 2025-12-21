import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({super.key});
  @override
  State<SplashScreen> createState()=> _SplashScreen();
}

class  _SplashScreen extends State<SplashScreen>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("GoDelivery", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 1.1,
          fontSize: 30,
        ),),
      ),
    );
  }
}