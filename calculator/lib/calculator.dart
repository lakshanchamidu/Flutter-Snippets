import 'package:flutter/material.dart';

class SecondCalculator extends StatefulWidget {
  const SecondCalculator({super.key});

  @override
  State<SecondCalculator> createState() => _SecondCalculator();
}

class _SecondCalculator extends State<SecondCalculator> {
  Color _buttonColors(String text) {
    if (text == "AC") {
      return const Color(0xFF6366f1);
    } else if (["=", "-", "x", "/","+"].contains(text)) {
      return const Color(0xFF8B5CF6);
    } else if (text == "C") {
      return const Color(0xFFEF4444);
    }
    return const Color(0xFF1F2937);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.calculate_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Calculator",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.history),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "65610",
                      style: const TextStyle(
                        fontSize: 56,
                        color: Colors.white,
                        letterSpacing: -2,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E2938),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, -5),
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildButton("C", flex: 2),
                      _buildButton("⌫"),
                      _buildButton("/")
                    ],
                  ),
                  const  SizedBox(height: 12,),
                  Row(
                    children: [
                      _buildButton("7"),
                      _buildButton("8"),
                      _buildButton("9"),
                      _buildButton("x"),
                    ],
                  ),
                  const  SizedBox(height: 12,),
                  Row(
                    children: [
                      _buildButton("4"),
                      _buildButton("5"),
                      _buildButton("6"),
                      _buildButton("-"),
                    ],
                  ),
                  const  SizedBox(height: 12,),
                  Row(
                    children: [
                      _buildButton("1"),
                      _buildButton("2"),
                      _buildButton("3"),
                      _buildButton("+"),
                    ],
                  ),
                  const  SizedBox(height: 12,),
                  Row(
                    children: [
                      _buildButton("0", flex: 2),
                      _buildButton("."),
                      _buildButton("="),
                      
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: _buttonColors(text),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: _buttonColors(text).withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: text == "⌫" ? 24 : 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
