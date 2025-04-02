import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/Add_notes_cubit/add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitional());
}
