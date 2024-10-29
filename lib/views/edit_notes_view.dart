import 'package:flutter/material.dart';
import 'package:notes_app/widget/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(),
      ),
    );
  }
}
