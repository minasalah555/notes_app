import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id = 'EditNote';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyEditNote());
  }
}
