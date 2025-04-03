import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_cubit.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/item_notes.dart';

class CustomItemNotesList extends StatelessWidget {
  const CustomItemNotesList({super.key});
  // final List<Color> colors = const [
  //   Color(0xffFFCD7A),
  //   Color(0xffE7E799),
  //   Color(0xff76D6EE),
  //   Color(0xffD49DDD),
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowAllNotesCubit, ShowNoteState>(
      builder: (context, state) {
        BlocProvider.of<ShowAllNotesCubit>(context).getAllNotes();
        List<NoteModel> notes =
            BlocProvider.of<ShowAllNotesCubit>(context).notesModel ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomItemNotes(note: notes[index]),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
