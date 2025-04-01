import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/item_notes.dart';

class CustomItemNotesList extends StatelessWidget {
  const CustomItemNotesList({super.key});
  final List<Color> colors = const [
    Color(0xffFFCD7A),
    Color(0xffE7E799),
    Color(0xff76D6EE),
    Color(0xffD49DDD),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: CustomItemNotes(color: colors[index % (colors.length)]),
            );
          },
        ),
      ),
    );
  }
}
