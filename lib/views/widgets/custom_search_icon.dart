import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search, size: 28),
      ),
    );
  }
}
