import 'package:bloc/bloc.dart';
import 'package:exercise_app/constants.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';


part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  ExerciseCubit() : super(ExerciseInitial());

  List<ExerciseCubit>? exercise;
  fetchAllMuscles(){
    var exerciseBox= Hive.box<ExerciseModel>(kExerciseBox);
    exercise = exerciseBox.values.cast<ExerciseCubit>().toList();
    emit(ExerciseSuccess());
  }
}
