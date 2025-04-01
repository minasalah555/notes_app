import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35),
      child: Row(
        children: [
          Text('Notes', style: TextStyle(color: Colors.white, fontSize: 28)),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
