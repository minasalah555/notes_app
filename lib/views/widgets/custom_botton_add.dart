import 'package:flutter/material.dart';

class CustomBottonAdd extends StatelessWidget {
  const CustomBottonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
