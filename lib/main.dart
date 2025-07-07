import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:second/models/note_model.dart';
import 'package:second/simple_bloc_oserver.dart';
import 'package:second/views/notes_view.dart';
import 'package:second/widget/constants.dart';

void main()async{
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocOserver();
  Hive.registerAdapter(NoteModelAdapter());
   await Hive.openBox<NoteModel>(kopenbox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return// MultiBlocProvider(
    // providers: [
   //   BlocProvider(create: (context)=>AddNoteCubitCubit()),
   //  ],
   //    child: 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
        ),
        home: const NotesView(),
         
      );
  
    
  }
}
