import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String name;
  final String grade;
  final String school;

  const DashboardScreen({
    super.key,
    required this.name,
    required this.grade,
    required this.school,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB9FBC0), Color(0xFF90DBF4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                // Greeting
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello, $name!",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 25, 68, 35),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Badge (optional small emoji/text)
                

                const SizedBox(height: 16),

                // Profile Image with Camera Icon
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 50, color: Colors.black),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.camera_alt,
                          color: Colors.white, size: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // User Info Card
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(grade, style: const TextStyle(fontSize: 16)),
                      Text(school, style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 20),

                      // Dashboard Buttons
                      _buildDashboardButton("ECOPOINTS", Icons.eco, Colors.teal),
                      const SizedBox(height: 12),
                      _buildDashboardButton("GROUPS", Icons.group, Colors.redAccent),
                      const SizedBox(height: 12),
                      _buildDashboardButton("CHALLENGES", Icons.emoji_events, Colors.blue),
                      const SizedBox(height: 12),
                      _buildDashboardButton("REELS & PHOTOS", Icons.photo_library, Colors.deepPurple),
                      const SizedBox(height: 12),
                      _buildDashboardButton("ACHIEVEMENTS", Icons.star_rate, Colors.lightGreen),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardButton(String label, IconData icon, Color color) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          // TODO: Navigate to other sections if needed
        },
        icon: Icon(icon, color: Colors.white),
        label: Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
