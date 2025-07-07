import 'package:flutter/material.dart';
import 'package:second/widget/add_button_model_sheet.dart';
import 'package:second/widget/custom_notesbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        context: context, builder:(context){
return AddButtonModelSheet();
      });
     },
     child: Icon(Icons.add),),
      body: CustomNotesbody(),
      
      
    );
  }
}