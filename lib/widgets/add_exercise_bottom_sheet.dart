import 'package:exercise_app/widgets/add_exercise_form.dart';
import 'package:flutter/material.dart';

class AddExerciseBottomSheet extends StatelessWidget {
  const AddExerciseBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const AbsorbPointer(
          child: Padding(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
            ),
            child: SingleChildScrollView(child: AddExerciseForm()),
          ),
        );
  }
}
