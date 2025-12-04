import 'package:flutter/material.dart';

class QRHomePage extends StatefulWidget {
  const QRHomePage({super.key});

  @override
  State<QRHomePage> createState() => _QRHomePage();
}

class _QRHomePage extends State<QRHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "QR Code Scanner",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 30,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("About Button pressed")),
              );
            },
          ),
        ],
      ),
      body:Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber.withOpacity(0.8),
              ),
              child: Text(
                "How to Work",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
        
      ),
      
    );
  }
}
