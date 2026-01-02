import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  State<LoginPage3> createState() => _LoginPage3();
}

class _LoginPage3 extends State<LoginPage3> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white, size: 32),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Wallet",
          style: GoogleFonts.yesevaOne(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),

        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.lock_outline_rounded,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
