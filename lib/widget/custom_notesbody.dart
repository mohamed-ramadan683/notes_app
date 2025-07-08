import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/notes_cubit/cubit/notes_cubit.dart';
import 'package:second/widget/custom_appbar.dart';
import 'package:second/widget/notes_list_view.dart';

class CustomNotesbody extends StatefulWidget {
  const CustomNotesbody({super.key});

  @override
  State<CustomNotesbody> createState() => _CustomNotesbodyState();
}

class _CustomNotesbodyState extends State<CustomNotesbody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchnote();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea( // يحمي من الـ status bar والـ notch
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 50), // بدل 50 عشان ما تستهلكش مساحة كبيرة
            CustomAppbar(title: 'Notes', icon: Icons.search),
            SizedBox(height: 8),
            Expanded(child: NotesListView()), // Expanded عشان ياخد المساحة الباقية من الشاشة بدون overflow
          ],
        ),
      ),
    );
  }
}