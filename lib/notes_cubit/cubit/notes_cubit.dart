import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:second/models/note_model.dart';
import 'package:second/widget/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> ?notes;
  fetchnote()async{

  var notebox=Hive.box<NoteModel>(kopenbox);
  notes=notebox.values.toList();

}  

}
