import 'package:flutter/material.dart';
import 'package:second/widget/custom_appbar.dart';
import 'package:second/widget/notes_list_view.dart';



class CustomNotesbody extends StatelessWidget {
  const CustomNotesbody({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
      CustomAppbar(title: 'Notes',
      icon:   Icons.search,),
     Expanded(child: NotesListView())
        ],
      ),
    );
  }
}