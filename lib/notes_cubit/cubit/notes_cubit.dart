import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:second/models/note_model.dart';
import 'package:second/widget/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchnote(NoteModel note)async{
try {
  emit(Notesloading());
  var notebox=Hive.box<NoteModel>(kopenbox);
  List<NoteModel> notes=notebox.values.toList();
  emit(Notessuccess( notes: notes));
}  catch (e) {
  emit(Notesfailure(errmessage:  e.toString()));
}

}
}