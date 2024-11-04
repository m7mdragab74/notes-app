abstract class AddNotesState {}

class AddNotesInitialState extends AddNotesState {}

class AddNotesLoadingState extends AddNotesState {}

class AddNotesSuccessState extends AddNotesState {}

class AddNotesFailureState extends AddNotesState {
  final String messageError;

  AddNotesFailureState(this.messageError);
}
