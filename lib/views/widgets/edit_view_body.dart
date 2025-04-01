import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class BodyEditNote extends StatelessWidget {
  const BodyEditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        children: [
          CustomAppBar(title: 'Edit note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(title: 'Title', maxLines: 1),
          SizedBox(height: 30),
          CustomTextField(title: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
