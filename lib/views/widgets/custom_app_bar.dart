import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 28)),
          const Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
