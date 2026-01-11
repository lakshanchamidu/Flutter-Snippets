import 'package:demo_pages/bottom_bar_clipper.dart';
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
            child: ClipPath(
              clipper: BottomBarClipper(),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _navbaricon(Icons.home_outlined, () {}),
                        const SizedBox(width: 20),
                        _navbaricon(Icons.search_outlined, () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.black, size: 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navbaricon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
