import 'package:exercise_app/exercise_cubit/exercise_cubit.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:exercise_app/widgets/exercise_note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseCubit, ExerciseState>(
      builder: (context, state) {
        // ignore: unused_local_variable
        List<Object> exercises =
           BlocProvider.of<ExerciseCubit>(context).exercise ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: 1,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child:
                   ExerciseNoteItem(
                    //يوجد مشكلة
                    exercise:ExerciseModel(wieghts: '8', title: 'chast', sets: '5', date: '2020-3-3')),
                );
              }),
        );
      },
    );
  }
}
