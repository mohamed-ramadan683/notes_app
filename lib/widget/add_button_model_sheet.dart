import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:second/widget/add_formkey.dart';


class AddButtonModelSheet extends StatelessWidget {
  const AddButtonModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitFailure) {
            print('failed');
          }
          if (state is AddNoteCubitSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return// ModalProgressHUD(
           // inAsyncCall: state is AddNoteCubitLoading ? true : false,
         //   child: 
            AbsorbPointer(
              absorbing: state is AddNoteCubitLoading?true:false,
              child: Padding(
                padding:  EdgeInsets.only(left: 16,right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: SingleChildScrollView(child: addformkey()),
              ),
            );
      //    );
        },
      ),
    );
  }
}
