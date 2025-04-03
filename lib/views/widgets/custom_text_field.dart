import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.maxLines,
    this.onSaved,
    this.validator,
    this.onChanged,
  });
  final String title;
  final int maxLines;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      cursorColor: kPrimayColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: kPrimayColor),
        enabledBorder: borderRadius(),
        border: borderRadius(color: kPrimayColor),
        focusedBorder: borderRadius(color: kPrimayColor),
        errorBorder: borderRadius(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder borderRadius({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
