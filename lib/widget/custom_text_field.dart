import 'package:flutter/material.dart';
import 'package:second/widget/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, this.maxlines=1,this.onsaved, this.oncahnge});
final String hint;
final int maxlines;
final Function(String)? oncahnge;
final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:oncahnge ,
      onSaved:onsaved ,
      validator: (value) {
        if (value?.isEmpty ?? true){
return 'field is requiered';
        }else{
          return null;
        }
      },
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