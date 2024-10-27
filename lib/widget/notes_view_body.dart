import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Column(
        children: [
          const CustomAppBar(),
        ],
      ),
    );
  }
}
