import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/models/note_model.dart';
import 'package:second/notes_cubit/cubit/notes_cubit.dart';
import 'package:second/widget/custom_appbar.dart';
import 'package:second/widget/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.noteModel});
final NoteModel noteModel;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          
            children:  [
              SizedBox(
                height: 50,
              ),
          CustomAppbar(
            onpressed: (){
              widget.noteModel.title=title??widget.noteModel.title;
               widget.noteModel.subtitle=content??widget.noteModel.subtitle;
               widget.noteModel.save();
               BlocProvider.of<NotesCubit>(context).fetchnote();
               Navigator.pop(context);
            },
            title: 'Edit Notes',
          icon:   Icons.check,),
          SizedBox(height: 40,),
          CustomTextField(
            oncahnge: (value){
              title=value;
            },
            hint: widget.noteModel.title),
          SizedBox(height: 20,),
          CustomTextField(
                  oncahnge: (value){
              content=value;
            },
            hint: widget.noteModel.subtitle,maxlines: 5,)
          ]
        ),
      ),
    );

  }
}