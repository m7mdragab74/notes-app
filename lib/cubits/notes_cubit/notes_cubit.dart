import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/model/note_model.dart';

class NotesCubit extends Cubit {
  NotesCubit() : super(NotesInitialState());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesSuccessState(notes));
    } on Exception catch (e) {
      emit(
        NotesFailureState(e.toString()),
      );
    }
  }
}
