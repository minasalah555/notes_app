import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/item_notes.dart';

class CustomItemNotesList extends StatelessWidget {
  const CustomItemNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const CustomItemNotes(),
          );
        },
      ),
    );
  }
}
