import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';

import 'custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 32,
          ),
          CustomFormTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomFormTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
