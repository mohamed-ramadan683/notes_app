import 'package:flutter/material.dart';
import 'package:second/widget/custom_searchicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
Text('Notes',style: TextStyle(
  fontSize: 25,
  color: Colors.white, 
  decoration: TextDecoration.none
),),
Spacer(),
CustomSearchicon()
    ],);
  }
}