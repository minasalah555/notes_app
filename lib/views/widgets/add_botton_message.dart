import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/Add_notes_cubit/add_notes__cubit.dart';
import 'package:notes_app/cubits/Add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/views/widgets/addNoteForm.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: BlocConsumer<AddNotesCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('failure ${state.errMessage}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: AddNoteForm(),
              );
            },
          ),
        ),
      ],
    );
  }
}
