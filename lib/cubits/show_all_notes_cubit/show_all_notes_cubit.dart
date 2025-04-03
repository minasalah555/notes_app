import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class ShowAllNotesCubit extends Cubit<ShowNoteState> {
  ShowAllNotesCubit() : super(ShowNoteInitional());

  void getAllNotes() {
    try {
      var notes = Hive.box<NoteModel>(kNotesBox);
      emit(ShowNoteSuccess(notes: notes.values.toList()));
    } on Exception catch (e) {
      emit(ShowNoteFailure(errMessage: e.toString()));
    }
  }
}
