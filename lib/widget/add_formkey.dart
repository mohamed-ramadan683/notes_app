
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:second/models/note_model.dart';
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
 var notemodel=NoteModel(title: title!, 
subtitle: subtitle!, 
date: DateTime.now().toString(),
 color: Colors.blue.value);
 BlocProvider.of<AddNoteCubitCubit>(context).addnote(notemodel);
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