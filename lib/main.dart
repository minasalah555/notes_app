import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {NotesView.id: (context) => NotesView()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // scaffoldBackgroundColor: Color.fromARGB(255, 80, 152, 228)
      ),
      initialRoute: NotesView.id,
    );
  }
}
