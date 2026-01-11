import 'package:flutter/material.dart';
import 'custom_bottom_nav_bar.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBars();
}

class _NavigationBars extends State<NavigationBars> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Stack(
        children: [
          Center(
            child: Text(
              "Custom Navbar",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              color: Colors.black,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              child: Icon(Icons.abc_outlined),
            ),
          ),
          Positioned(
            bottom: 40,
            left: MediaQuery.of(context).size.width / 2 - 33,
            child: Container(
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.black, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
