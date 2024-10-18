import 'package:exercise_app/widgets/add_exercise_bottom_sheet.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
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
      body: const MusclesViewBody(title: 'Chest',)
    );
  }
}


class MusclesViewBody extends StatelessWidget {
  const MusclesViewBody({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 24),
        child: Column(
          children: [
            CustomAppBar(title: title, icon: Icons.home,onPressed: (){
              Navigator.pop(context);
            },),
          ],
        ),
      );
  }
}