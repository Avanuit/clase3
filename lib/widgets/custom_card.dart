import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String email;
  final Color color;

  const CustomCard({
    super.key,
    required this.name,
    required this.email,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withAlpha(25),
      margin: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 36,
              backgroundImage: AssetImage('resources/images.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
            ),
            const SizedBox(height: 8),
            Text(
              email,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
