import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_botton_add.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            title: 'Title',
            maxLines: 1,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'the Field is required';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 15),
          CustomTextField(
            title: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'the Field is required';
              } else {
                return null;
              }
            },
          ),

          CustomBottonAdd(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel note = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
