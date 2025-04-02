import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_state.dart';

class ShowAllNotesCubit extends Cubit<ShowNoteState> {
  ShowAllNotesCubit() : super(ShowNoteInitional());
}
