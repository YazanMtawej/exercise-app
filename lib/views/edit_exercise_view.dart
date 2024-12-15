import 'package:exercise_app/exercise_cubit/exercise_cubit.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:exercise_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditExerciseView extends StatelessWidget {
  const EditExerciseView({super.key, required this.exercise});

final ExerciseModel exercise;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: EditExerciseViewBody(
        exercise: exercise,
      ),
    );
  }
}

class EditExerciseViewBody extends StatefulWidget {
  const EditExerciseViewBody({super.key, required this.exercise});
 final ExerciseModel exercise;
  @override
  State<EditExerciseViewBody> createState() => _EditExerciseViewBodyState();
}

class _EditExerciseViewBodyState extends State<EditExerciseViewBody> {
  String? title, sets , weights ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.exercise.title = title ?? widget.exercise.title;
              widget.exercise.title = sets ?? widget.exercise.sets;
              widget.exercise.title = weights ?? widget.exercise.wieghts;
              widget.exercise.save();
              BlocProvider.of<ExerciseCubit>(context).fetchAllMuscles();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.exercise.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              sets = value;
            },
            hint: widget.exercise.sets,
          
          ),
           const SizedBox(
            height: 32,
            
          ),
             CustomTextField(
            onChanged: (value) {
              weights = value;
            },
            hint: widget.exercise.wieghts,
          
          ),
          // EditNoteColorsList(
      //      notes: widget.notes,
        //   ),
        ],
      ),
    );
  }
}