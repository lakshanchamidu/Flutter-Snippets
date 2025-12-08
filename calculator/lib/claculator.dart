import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  String displayText = "0";
  
  Color _getButtonColor(String text) {
    if (text == "=") {
      return const Color(0xFF6366F1); 
    } else if (["+", "-", "×", "/"].contains(text)) {
      return const Color(0xFF8B5CF6); 
    } else if (text == "C") {
      return const Color(0xFFEF4444); 
    }
    return const Color(0xFF1F2937); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.calculate_outlined, color: Colors.white70, size: 28),
                      SizedBox(width: 10),
                      Text(
                        "Calculator",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.history, color: Colors.white70),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      displayText,
                      style: const TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        letterSpacing: -2,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),

            // Button Pad
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Row 1
                  Row(
                    children: [
                      _buildButton("C", flex: 2),
                      _buildButton("⌫"),
                      _buildButton("/"),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Row 2
                  Row(
                    children: [
                      _buildButton("7"),
                      _buildButton("8"),
                      _buildButton("9"),
                      _buildButton("×"),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Row 3
                  Row(
                    children: [
                      _buildButton("4"),
                      _buildButton("5"),
                      _buildButton("6"),
                      _buildButton("-"),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Row 4
                  Row(
                    children: [
                      _buildButton("1"),
                      _buildButton("2"),
                      _buildButton("3"),
                      _buildButton("+"),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildButton("0", flex: 2),
                      _buildButton("."),
                      _buildButton("="),
                    ],
                  ),
                ],
              ),
            ),
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
            onTap: () {
              setState(() {
                if (text == "C") {
                  displayText = "0";
                } else if (text == "⌫") {
                  if (displayText.length > 1) {
                    displayText = displayText.substring(0, displayText.length - 1);
                  } else {
                    displayText = "0";
                  }
                } else {
                  if (displayText == "0" && text != ".") {
                    displayText = text;
                  } else {
                    displayText += text;
                  }
                }
              });
            },
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: _getButtonColor(text),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: _getButtonColor(text).withOpacity(0.3),
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
