import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:second/views/notes_view.dart';
import 'package:second/widget/constants.dart';

void main()async{
  await Hive.initFlutter();
   await Hive.openBox(kopenbox);
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
