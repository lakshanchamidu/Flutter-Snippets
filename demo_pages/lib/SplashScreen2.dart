import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2();
}

class _SplashScreen2 extends State<SplashScreen2> {
  String selectedValue = "En";
  List<String> languages = ['En', 'සිං', 'தமி'];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(
          "Uber Eats",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 32,
            letterSpacing: 1.2,
          ),
        ),
        actions: <Widget>[
          DropdownButton<String>(value: selectedValue,),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text("Info button Pressed")),
              );
            },
            icon: Icon(Icons.info_outline, color: Colors.white, size: 32),
          ),
        ],
      ),
    );
  }
}
