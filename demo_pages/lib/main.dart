import 'package:flutter/material.dart';
import '404errorPage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext conetxt){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ErrorPage(),
    );
  }
}