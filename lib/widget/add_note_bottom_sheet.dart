import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: const Column(
        children: [
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
