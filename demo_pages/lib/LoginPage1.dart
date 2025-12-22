import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget{
  const LoginPage1 ({super.key});

  @override
  State<LoginPage1> createState()=> _LoginPage1();
}

class _LoginPage1 extends State<LoginPage1>{
  Widget build(BuildContext context){
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text("Demo", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30
            ),),
          ),
        ),
      ],
    );
  }
}