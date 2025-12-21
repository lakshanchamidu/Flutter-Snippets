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
        backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(left: 12, right: 10, top: 60),
              child: Lottie.asset('lib/assests/error_screen.json'),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Text(
                  "Page Not Found",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 60,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.wifi_off_rounded,
                            color: Colors.grey[700],
                            size: 24,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Check your connection.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.refresh_rounded,
                            color: Colors.grey[700],
                            size: 24,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Reload the page.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              letterSpacing: 0.5,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
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