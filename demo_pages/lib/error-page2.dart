import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage2 extends StatefulWidget {
  const ErrorPage2({super.key});
  @override
  State<ErrorPage2> createState() => _ErrorPage2();
}

class _ErrorPage2 extends State<ErrorPage2> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Demo App 2",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Info button Successfully pressed")),
            );
          },
          icon: Icon(Icons.info_outline, color: Colors.black, size: 28),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Refreshed Successfully")));
            },
            icon: Icon(Icons.refresh_outlined, color: Colors.black, size: 28),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(153, 255, 255, 255),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12, left: 12, top: 30),
              child: Lottie.asset('lib/assests/Lonely_404.json'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Page not found!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 4,
              width: 60,
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wifi, color: Colors.white, size: 25),
                        SizedBox(width: 10),
                        Text(
                          "Check your Connection",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.refresh, color: Colors.white, size: 25),
                        SizedBox(width: 10),
                        Text(
                          "Reresh your screen.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: const Text("Back to home button pressed")),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Developed by Chamidu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
