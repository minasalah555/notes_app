import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/add_botton_message.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff55EFDE),
        mouseCursor: MouseCursor.defer,
        splashColor: Colors.red,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const CustomShowBottonSheet();
            },
          );
        },
        child: Icon(FontAwesomeIcons.plus, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
