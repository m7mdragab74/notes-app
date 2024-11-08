import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/edit_note_color_list_view.dart';

import 'custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 32,
          ),
          CustomFormTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.noteModel.title,
          ),
          SizedBox(
            height: 20,
          ),
          CustomFormTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.noteModel.content,
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          EditNoteColorsList(
            note: widget.noteModel,
          ),
        ],
      ),
    );
  }
}
