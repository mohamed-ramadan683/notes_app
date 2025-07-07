
import 'package:flutter/material.dart';
import 'package:second/widget/custom_button.dart';
import 'package:second/widget/custom_text_field.dart';

class addformkey extends StatefulWidget {
  const addformkey({
    super.key,
  });
  

  @override
  State<addformkey> createState() => _addformkeyState();
}

class _addformkeyState extends State<addformkey> {
 final GlobalKey<FormState>formkey=GlobalKey();
 AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
String? title,subtitle;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 27,
            
          ),
          CustomTextField(
            onsaved: (value){
              title=value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onsaved: (value){
              subtitle=value;
            },
            hint: 
          'content',
          maxlines: 5,),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            ontap: (){
              if(formkey.currentState!.validate()){
formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}