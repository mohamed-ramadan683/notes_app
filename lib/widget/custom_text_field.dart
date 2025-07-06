import 'package:flutter/material.dart';
import 'package:second/widget/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, this.maxlines=1});
final String hint;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: hint,
      
        hintStyle: TextStyle(
          color: kprimarycolor,
        ),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimarycolor)
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(  color:color?? Colors.white,) ,
      );
  }
}