import 'package:flutter/material.dart';
import 'custom_bottom_nav_bar.dart';

class NavigationBars extends StatefulWidget{
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState()=> _NavigationBars();
}

class _NavigationBars extends State<NavigationBars>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Stack(
        children: [
          Center(
            child: Text("Custom Navbar", style: TextStyle(
              fontSize: 22,
              color: Colors.white
            ),),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(),
          ),
        ],
      ),
    );
  }
}