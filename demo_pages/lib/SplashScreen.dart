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
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(content: const Text("Info button pressed.")),
      //         );
      //       },
      //       icon: Icon(
      //         Icons.info_outline_rounded,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //     ),
      //   ],
      //   title: const Text(
      //     "GoDelivery",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       color: Colors.black,
      //       letterSpacing: 1.1,
      //       fontSize: 34,
      //     ),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            // Animation වල part එක
            Expanded(
              flex: 2,
              child: Lottie.asset("lib/assests/Food_Courier.json"),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "GoDelivery",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 34,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      
                      // Tagline
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Delivering Happiness, One Bite at a Time",
                          style: TextStyle(
                            color: Colors.orange,
                            letterSpacing: 0.8,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      
                      SizedBox(height: 25),
                      
                      // Description
                      Text(
                        "Your go-to app for fast, fresh, and reliable food delivery. From your favorite restaurants straight to your doorstep!",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      SizedBox(height: 35),
                      
                      // Button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 5,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward_rounded, size: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
