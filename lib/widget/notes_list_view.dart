import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/models/note_model.dart';
import 'package:second/notes_cubit/cubit/notes_cubit.dart';
import 'package:second/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colors = const [
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
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: NoteItem(noteModel: notes[index],),
              );
            },
          ),
        );
      },
    );
  }
}
