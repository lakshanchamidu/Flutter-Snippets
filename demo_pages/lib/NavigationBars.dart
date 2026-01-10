import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          )
          Positioned(
            bottom: 35,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}