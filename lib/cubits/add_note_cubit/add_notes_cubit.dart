import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/model/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitialState());

  addNote(NoteModel note) async {
    emit(AddNotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccessState());
      await notesBox.add(note);
    } on Exception catch (e) {
      AddNotesFailureState(e.toString());
    }
  }
}
