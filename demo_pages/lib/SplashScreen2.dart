import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2();
}

class _SplashScreen2 extends State<SplashScreen2> {
  String selectedValue = "En";
  List<String> languages = ['En', 'සිං', 'தமி'];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Text(
              "Uber",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 32,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              "Eats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 32,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsetsGeometry.only(right: 15),
            child: Container(
              width: 80,
              height: 40,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedValue,
                  dropdownColor: Colors.green[900],
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                  items: languages.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),

      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Lottie.asset('lib/assests/Food_Courier.json'),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                textAlign: TextAlign.center,
                "Quick Cravings, Quicker Delivery.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(height: 6),
            Container(
              width: 65,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
            ),

            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text("Powered by Uber Eats", style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.05
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
