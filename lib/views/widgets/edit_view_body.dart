import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class BodyEditNote extends StatefulWidget {
  const BodyEditNote({super.key, required this.note});
  final NoteModel note;

  @override
  State<BodyEditNote> createState() => _BodyEditNoteState();
}

class _BodyEditNoteState extends State<BodyEditNote> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit note',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ShowAllNotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomTextField(
            title: widget.note.title,
            maxLines: 1,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 30),
          CustomTextField(
            title: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
        ],
      ),
    );
  }
}
