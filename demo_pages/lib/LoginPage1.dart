import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1();
}

class _LoginPage1 extends State<LoginPage1> {
  String _selectedValue = "🌐 En";
  List<String> language = ["🌐 En","🌐 සිං","🌐 தமி"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Demo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
        actions: <Widget>[],
      ),
    );
  }
}
