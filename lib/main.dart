import 'package:flutter/material.dart';
import 'package:second/views/notes_view.dart';

void main(){
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home: const NotesView(),
   
    );
    
  }
}
