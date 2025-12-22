import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1();
}

class _LoginPage1 extends State<LoginPage1> {
  String _selectedValue = "En";
  List<String> language = ["En", "සිං", "தமி"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Demo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 100,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("🌐 "),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedValue,
                      dropdownColor: Colors.grey.shade200,
                      icon: Icon(Icons.arrow_drop_down),
                      items: language.map<DropdownMenuItem<String>>((
                        String item,
                      ) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? val) {
                        setState(() {
                          _selectedValue = val!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Lottie.asset('lib/assests/Cat_Movement.json'),
          ),

          const Spacer(),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Powered by Demo",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "App",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Team",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
