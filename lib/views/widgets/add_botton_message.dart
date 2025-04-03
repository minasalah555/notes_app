import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:notes_app/cubits/show_all_notes_cubit/show_all_notes_cubit.dart';
import 'package:notes_app/views/widgets/addNoteForm.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<ShowAllNotesCubit>(context).getAllNotes();
          } else if (state is AddNoteFailure) {
            print('error message ${state.errMessage}');
          }
        },
        builder: (context, state) {
          print('rebuild ui ');
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 400,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [const AddNoteForm()],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
