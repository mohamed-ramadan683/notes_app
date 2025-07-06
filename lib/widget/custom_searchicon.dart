import 'package:flutter/material.dart';

class CustomSearchicon extends StatelessWidget {
  const CustomSearchicon({super.key,required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1)
      ),
      child:  Icon(
        icon,
        size: 20,
      ),
    );
  }
}