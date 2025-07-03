import 'package:flutter/material.dart';

class CustomSearchicon extends StatelessWidget {
  const CustomSearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1)
      ),
      child: Icon(
        Icons.search,
        size: 20,
      ),
    );
  }
}