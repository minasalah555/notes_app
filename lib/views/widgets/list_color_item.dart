import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(this.isChecking, this.color);
  final bool isChecking;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isChecking == true
        ? CircleAvatar(
          radius: 38,
          backgroundColor: Colors.white,
          child: CircleAvatar(backgroundColor: color, radius: 34),
        )
        : CircleAvatar(backgroundColor: color, radius: 38);
  }
}

class ListColorItem extends StatefulWidget {
  const ListColorItem({super.key});

  @override
  State<ListColorItem> createState() => _ListColorItemState();
}

class _ListColorItemState extends State<ListColorItem> {
  int currentIndex = 0;
  final List<Color> colors = const [
    Color(0xffFFCD7A),
    Color(0xffE7E799),
    Color(0xff76D6EE),
    Color(0xffD49DDD),
    Color(0xffD4925D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                currentIndex == index ? true : false,
                colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
