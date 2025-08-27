import 'package:flutter/material.dart';
import 'widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomCard(
        name: 'Prepucio Lopez',
        email: 'prepucio.lopez@gmail.com',
        color: Colors.purple,
      ),
    );
  }
}