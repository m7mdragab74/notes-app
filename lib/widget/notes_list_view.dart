import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CustomNotesItem();
      },
    );
  }
}
