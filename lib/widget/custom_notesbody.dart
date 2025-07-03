import 'package:flutter/material.dart';
import 'package:second/widget/custom_appbar.dart';

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
      CustomAppbar()
        ],
      ),
    );
  }
}