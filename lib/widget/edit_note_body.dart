import 'package:flutter/material.dart';
import 'package:second/widget/custom_appbar.dart';
import 'package:second/widget/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          
            children: const [
              SizedBox(
                height: 50,
              ),
          CustomAppbar(title: 'Edit Notes',
          icon:   Icons.check,),
          SizedBox(height: 40,),
          CustomTextField(hint: 'title'),
          SizedBox(height: 20,),
          CustomTextField(hint: 'content',maxlines: 5,)
          ]
        ),
      ),
    );

  }
}