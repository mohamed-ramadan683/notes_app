import 'package:flutter/material.dart';
import 'package:second/widget/add_formkey.dart';


class AddButtonModelSheet extends StatelessWidget {
  const AddButtonModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addformkey(),
      ),
    );
  }
}
