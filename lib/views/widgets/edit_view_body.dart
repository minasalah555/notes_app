import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class BodyEditNote extends StatelessWidget {
  const BodyEditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [CustomAppBar(title: 'Edit note')]),
    );
  }
}
