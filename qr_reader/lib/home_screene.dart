import 'package:flutter/material.dart';

class QRHomePage extends StatefulWidget {
  const QRHomePage({super.key});

  @override
  State<QRHomePage> createState() => _QRHomePage();
}

class _QRHomePage extends State<QRHomePage> {
  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required Color color,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3), width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.dashboard_rounded, color: Colors.white, size: 24),
            SizedBox(width: 10),
            Text(
              "Multi Task App",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
        ),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Feature Grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  _buildFeatureCard(
                    icon: Icons.calculate_outlined,
                    title: "Calculator",
                    color: const Color(0xFF6366F1),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Calculator Opened")),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.wb_sunny_outlined,
                    title: "Weather",
                    color: const Color(0xFFF59E0B),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Weather Opened")),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.qr_code_scanner,
                    title: "QR Scanner",
                    color: const Color(0xFF10B981),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("QR Scanner Opened")),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.timer_outlined,
                    title: "Timer",
                    color: const Color(0xFFEC4899),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Timer Opened")),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // QR Scanner Section
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF6366F1).withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.qr_code_2_rounded,
                        size: 64,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Scan QR Code",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Point your camera at a QR code to scan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Opening Camera...")),
                          );
                        },
                        icon: const Icon(Icons.camera_alt),
                        label: const Text("Open Camera"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF6366F1),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Footer Info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.grey[600], size: 20),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Quick access to your favorite tools",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
