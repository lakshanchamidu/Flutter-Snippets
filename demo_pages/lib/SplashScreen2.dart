import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2();
}

class _SplashScreen2 extends State<SplashScreen2>
    with SingleTickerProviderStateMixin {
  String selectedValue = "En";
  List<String> languages = ['En', 'සිං', 'தமி'];

  late AnimationController _controller;
  late Animation<double> _arrowAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    // Horizontal animation for forward arrow
    _arrowAnimation = Tween<double>(
      begin: 0,
      end: 15,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 80,
              height: 40,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
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
                  ),
                  items: languages.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
                  onChanged: (val) {
                    setState(() => selectedValue = val!);
                  },
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Lottie.asset('lib/assests/Food_Courier.json'),
          ),

          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Quick Cravings, Quicker Delivery.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            width: 65,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
          ),

          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              "📍 Delivering near you",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "⭐ 4.8 Rated",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 71, 1).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "🚴 Fast delivery",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Swipe to Start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20),
              AnimatedBuilder(
                animation: _arrowAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_arrowAnimation.value, 0),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                  );
                },
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text(
              "Powered by Uber Eats",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
