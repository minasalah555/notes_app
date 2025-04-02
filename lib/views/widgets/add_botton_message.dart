import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:notes_app/views/widgets/addNoteForm.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print('error message ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: ListView(children: [AddNoteForm()]),
          );
        },
      ),
    );
  }
}
