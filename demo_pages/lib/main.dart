import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'LoginPage2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext conetxt) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage2());
  }
}
