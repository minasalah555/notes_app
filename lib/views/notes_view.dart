import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_cubit.dart';
import 'package:notes_app/views/widgets/add_botton_message.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowAllNotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff55EFDE),
          mouseCursor: MouseCursor.defer,
          splashColor: Colors.red,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
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
      ),
    );
  }
}
