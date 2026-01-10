import 'package:flutter/material.dart';

class NavigationBars extends StatefulWidget{
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState()=> _NavigationBars();
}

class _NavigationBars extends State<NavigationBars>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green[900],
    );
  }
}