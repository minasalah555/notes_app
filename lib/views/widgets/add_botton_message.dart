import 'package:flutter/material.dart';

class CustomShowBottonSheet extends StatelessWidget {
  const CustomShowBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Title',
            hintStyle: TextStyle(color: Color(0xff53EBD6)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          maxLines: 4,

          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            hintText: 'Content',
            hintStyle: TextStyle(color: Color(0xff53EBD6)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff53EBD6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text('Add', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
      ],
    );
  }
}
