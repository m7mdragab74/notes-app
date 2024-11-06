import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widget/notes_view_body.dart';

import '../widget/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
      ),
      body: const SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
