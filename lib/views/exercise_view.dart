import 'package:exercise_app/views/muscles_view.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:exercise_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        child: ExerciseListViewBody()
      ),
    );
  }
}

class ExerciseListViewBody extends StatelessWidget {
  const ExerciseListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
    
          children: [
            CustomAppBar(
              title: 'Exercise App',
              icon: Icons.search,
              onPressed: () {},
            ),
            const SizedBox(height: 10,),
            const Text("Welcome in exercise app chose your muscle",style: TextStyle(fontSize: 16),),
            CustomText(
              title: 'Chest',
              onTap: (){
    
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const MusclesView();
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
        );
  }
}