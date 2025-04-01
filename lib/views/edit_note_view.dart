import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNote';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyEditNote());
  }
}
