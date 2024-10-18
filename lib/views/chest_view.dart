import 'package:exercise_app/widgets/add_exercise_bottom_sheet.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ChestView extends StatelessWidget {
  const ChestView({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 24),
        child: Column(
          children: [
            CustomAppBar(title: 'Chest', icon: Icons.home,onPressed: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
    );
  }
}


