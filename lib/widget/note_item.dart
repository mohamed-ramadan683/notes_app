import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/models/note_model.dart';
import 'package:second/notes_cubit/cubit/notes_cubit.dart';
import 'package:second/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel,});
 final NoteModel noteModel;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView(noteModel: noteModel,);
        }));
      },
      child: Container( 
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(8),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(noteModel.title,style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(noteModel.subtitle,style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4)
                ),),
              ),
              trailing: IconButton(onPressed: (){
                noteModel.delete();
                BlocProvider.of<NotesCubit>(context).fetchnote();
              },
              
               icon: Icon(Icons.delete,
              color: Colors.black,
              size: 28,),)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24,top: 24),
              child: Text(noteModel.date,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}