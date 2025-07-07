part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class Notesloading extends NotesState {}
final class Notessuccess extends NotesState {
  final List<NoteModel>notes;

  Notessuccess({ required this.notes});
}
final class Notesfailure extends NotesState {
    final String errmessage;
  Notesfailure( { required this.errmessage});
}
