import 'package:exercise_app/views/chest_view.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:exercise_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Exercise App',
              icon: Icons.search,
              onPressed: () {},
            ),
            CustomText(
              title: 'Chest',
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ChestView();
                }));
              },
            ),
            const CustomText(
              title: 'Back',
            ),
            const CustomText(
              title: 'Shoulder',
            ),
            const CustomText(
              title: 'Legs',
            ),
            const CustomText(
              title: 'Biceps',
            ),
            const CustomText(
              title: 'Triceps',
            ),
            const CustomText(
              title: 'Hand forearm',
            ),
            const CustomText(
              title: 'Abdominal muscles',
            ),
          ],
        ),
      ),
    );
  }
}

