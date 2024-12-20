import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/model/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitialState());
  Color color = Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccessState());
    } on Exception catch (e) {
      emit(
        AddNotesFailureState(e.toString()),
      );
    }
  }
}
