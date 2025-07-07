import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/notes_cubit/cubit/notes_cubit.dart';
import 'package:second/widget/add_button_model_sheet.dart';
import 'package:second/widget/custom_notesbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddButtonModelSheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        body: CustomNotesbody(),
      ),
    );
  }
}
