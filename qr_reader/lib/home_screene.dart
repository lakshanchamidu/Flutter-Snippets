import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class QRHomePage extends StatefulWidget {
  const QRHomePage({super.key});

  @override
  State<QRHomePage> createState() => _QRHomePage();
}

class _QRHomePage extends State<QRHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "QR Code Scanner",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.info_outline),
        //     iconSize: 30,
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //         const SnackBar(content: Text("About Button pressed")),
        //       );
        //     },
        //   ),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DottedBorder(
              color: Colors.black,
              strokeWidth: 2,
              dashPattern: [6, 3],
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Scan your QR Code Easily",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Pressed Open Camera")),
                        );
                      },
                      child: const Text("Open Camera"),

                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber.withOpacity(0.8),
              ),
              child: Column(
                children: const [
                  Text(
                    "About Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "This QR Scanner app allows you to scan any QR code quickly and easily "
                    "using your device camera. Simply open the camera and point it at a QR code "
                    "to scan instantly.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
