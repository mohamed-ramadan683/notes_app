import 'package:flutter/material.dart';

class CustomSearchicon extends StatelessWidget {
  const CustomSearchicon({super.key,required this.icon, this.onpressed});
final IconData icon;
final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1)
      ),
      child: IconButton(onPressed: onpressed, icon: Icon(
        icon,
        size: 20,)
      ),
    );
  }
}