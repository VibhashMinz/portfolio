import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  )),
          const SizedBox(height: 24),
          Container(
            width: 480,
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: const Color(0xFF23242B),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.school, color: accent, size: 28),
                    const SizedBox(width: 10),
                    Text('Bachelor of Technology', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: accent)),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Computer Science And Engineering', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white)),
                const SizedBox(height: 10),
                const Text('Bhubaneswar Engineering College, Bhubaneswar', style: TextStyle(fontSize: 16, color: Colors.white70)),
                const SizedBox(height: 10),
                const Text('2015 - 2019', style: TextStyle(color: Colors.white54, fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
