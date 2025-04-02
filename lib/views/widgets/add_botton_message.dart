import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/addNoteForm.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: AddNoteForm(),
        ),
      ],
    );
  }
}
