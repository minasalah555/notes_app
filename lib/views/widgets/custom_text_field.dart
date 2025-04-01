import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.maxLines,
  });
  final String title;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimayColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: kPrimayColor),
        enabledBorder: borderRadius(),
        focusedBorder: borderRadius(color: kPrimayColor),
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
