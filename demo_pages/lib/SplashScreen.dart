import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: const Text("Info button pressed.")),
              );
            },
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        title: const Text(
          "GoDelivery",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.1,
            fontSize: 34,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(child: Lottie.asset("lib/assests/Food_Courier.json")),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber[800],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
                )
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
