import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 16,
          ),
          CustomNotesItem(),
        ],
      ),
    );
  }
}
