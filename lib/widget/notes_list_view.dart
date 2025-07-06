import 'package:flutter/material.dart';
import 'package:second/widget/note_item.dart';

class NotesListView extends StatelessWidget {
 const NotesListView({super.key});
  final List<Color>colors= const[
 Colors.amber,
Colors.blue,
Colors.cyanAccent,
Colors.deepOrangeAccent,
Colors.blueGrey,
Colors.green,
Colors.pink,
Colors.purpleAccent,
Colors.teal,

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context,index){

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: NoteItem(color:colors[index] ),
      );
    });
  }
}