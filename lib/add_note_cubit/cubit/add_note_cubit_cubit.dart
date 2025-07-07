import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:second/models/note_model.dart';
import 'package:second/widget/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addnote(NoteModel note)async{
try {
  emit(AddNoteCubitLoading());
  var notebox=Hive.box<NoteModel>(kopenbox);
 await notebox.add(note);
  emit(AddNoteCubitSuccess());
   
}  catch (e) {
  emit(AddNoteCubitFailure( errmessage:  e.toString()));
}

  }
}
