import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomItemNotes extends StatelessWidget {
  const CustomItemNotes({super.key, required this.note});
  final NoteModel note;
  // final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // BlocProvider.of<AddNoteCubit>(context).addNote(
        //   NoteModel(
        //     title: 'mina',
        //     subTitle: 'mina',
        //     color: Colors.black.value,
        //     date: DateTime.now().toString(),
        //   ),
        // );
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              // contentPadding: EdgeInsets.only(bottom: ),
              title: Text(
                note.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  // fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<ShowAllNotesCubit>(context).getAllNotes();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, right: 16),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
