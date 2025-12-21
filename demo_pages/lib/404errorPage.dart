import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPage();
}

class _ErrorPage extends State<ErrorPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh, color: Colors.black, size: 30),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.info_outline, color: Colors.black, size: 30),
        ),
        title: const Text(
          'Demo App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontSize: 30,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 2,
                offset: Offset(0, 1.2),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 10, top: 80),
              child: Lottie.asset('lib/assests/error_screen.json'),
            ),
            Column(
              children: [
                Text(
                  "Page Not Found",
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  "Check your connection.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  "Reload the page.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1.1,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("© 2025 Demo App",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
          ],
        ),
      ),
    );
  }
}





// child: Lottie.asset('lib/assests/error_screen.json'),