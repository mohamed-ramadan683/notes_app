import 'package:flutter/material.dart';
import 'package:second/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        }));
      },
      child: Container( 
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text('build your carrier with ronaldo mo',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4)
                ),),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,
              color: Colors.black,
              size: 28,),)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24,top: 24),
              child: Text('may 21,2025',style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}