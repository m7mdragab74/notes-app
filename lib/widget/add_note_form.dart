import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/add_note_bottom.dart';
import 'package:notes_app/widget/color_list_view.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomFormTextField(
            onChanged: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomFormTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return AddNoteBottom(
                isLoading: state is AddNotesLoadingState ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formateCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        content: subTitle!,
                        date: formateCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
