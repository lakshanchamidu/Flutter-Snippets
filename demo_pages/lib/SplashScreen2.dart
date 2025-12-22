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

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Lottie.asset('lib/assests/Food_Courier.json'),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
                  blurRadius: 6,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                "📍 Delivering near you",
                style: TextStyle(
                  letterSpacing: 1.1,
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Text(
                  "⭐ 4.8 Rated | 🚴 Fast delivery",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.1,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text(
              "Powered by Uber Eats",
              style: TextStyle(color: Colors.white, letterSpacing: 1.05),
            ),
          ),
        ],
      ),
    );
  }
}
