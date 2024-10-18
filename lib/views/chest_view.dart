import 'package:exercise_app/views/muscles_view.dart';
import 'package:exercise_app/widgets/add_exercise_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MusclesView extends StatelessWidget {
  const MusclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddExerciseBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const MusclesViewBody(title: 'Chest',));
  }
}
