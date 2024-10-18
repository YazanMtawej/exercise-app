
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:exercise_app/widgets/exercise_list_view.dart';
import 'package:flutter/material.dart';

class MusclesViewBody extends StatelessWidget {
  const MusclesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Chest',
            icon: Icons.home,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Expanded(child: ExerciseListView()),
        ],
      ),
    );
  }
}
