abstract class AddNoteState {}

class AddNoteInitional extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;
  AddNoteFailure({required this.errMessage});
}
