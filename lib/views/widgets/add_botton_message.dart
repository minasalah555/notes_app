import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_botton_add.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      children: [
        CustomTextField(title: 'Title', maxLines: 1),
        SizedBox(height: 15),
        CustomTextField(title: 'Content', maxLines: 4),
        CustomBottonAdd(),
      ],
    );
  }
}
