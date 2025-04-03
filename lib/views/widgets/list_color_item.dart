import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: Colors.blueGrey, radius: 38);
  }
}

class ListColorItem extends StatelessWidget {
  const ListColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: ColorItem(),
          );
        },
      ),
    );
  }
}
