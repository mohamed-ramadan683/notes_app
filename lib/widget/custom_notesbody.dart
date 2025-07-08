import 'package:flutter/material.dart';

import 'package:second/widget/custom_appbar.dart';
import 'package:second/widget/notes_list_view.dart';

class CustomNotesbody extends StatelessWidget {
  const CustomNotesbody({super.key});

  @override
 
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