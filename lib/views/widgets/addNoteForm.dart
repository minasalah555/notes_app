import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_botton_add.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});

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
          SizedBox(height: 15),
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
