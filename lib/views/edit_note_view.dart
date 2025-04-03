import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNote';

  @override
  Widget build(BuildContext context) {
    final NoteModel? note =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(body: BodyEditNote(note: note!));
  }
}
