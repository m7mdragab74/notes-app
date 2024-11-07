import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 23,
            ),
          )
        : CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 25,
          );
  }
}
