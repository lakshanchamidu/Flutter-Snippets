import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2();
}

class _LoginPage2 extends State<LoginPage2> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(Icons.menu, color: Colors.white, size: 32),
        ),
        centerTitle: true,
        title: Text(
          "Wallet",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.lock_outline_rounded,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Lottie.asset('lib/assets/paymentCard.json'),
          ),

          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
            ),
            child: Column(
              children: [
                Text("Secure your private data.", style: TextStyle(
                  color: Colors.white
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
