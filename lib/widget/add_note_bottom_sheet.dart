import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
