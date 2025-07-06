import 'package:flutter/material.dart';
import 'package:second/widget/custom_text_field.dart';

class AddButtonModelSheet extends StatelessWidget {
  const AddButtonModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 27,
            
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}