import 'package:flutter/material.dart';
import 'package:second/widget/custom_searchicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.title,required this.icon, this.onpressed});
final String title;
final IconData icon;
final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(children:  [
  Text(title,style: TextStyle(
  fontSize: 25,
  color: Colors.white, 
  decoration: TextDecoration.none
),),
Spacer(),
CustomSearchicon(
  onpressed: onpressed,
  icon: icon,)
    ],);
  }
}