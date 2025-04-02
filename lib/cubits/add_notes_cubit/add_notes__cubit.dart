import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/Add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitional());
  bool isLoading = false;
  void addNote({required NoteModel noteModel}) async {
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(noteModel);
      isLoading = false;
      emit(AddNoteSuccess());
    } catch (e) {
      isLoading = false;
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
