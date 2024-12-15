
import 'package:exercise_app/constants.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';


part 'add_exercise_state.dart';

class AddExerciseCubit extends Cubit<AddExerciseState> {
  AddExerciseCubit() : super(AddExerciseInitial());

  
  addExercise(ExerciseModel note)async{
  
    emit(AddExerciseLoding());
   try {
  var notesBox =Hive.box<ExerciseModel>(kChestBox);
  await notesBox.add(note);
  emit(AddExerciseSuccess());
}  catch (e) {
  emit(AddExerciseFailure(e.toString()));
}
  }
}
