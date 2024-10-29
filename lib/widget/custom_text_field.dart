import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
      ),
    );
  }
}
