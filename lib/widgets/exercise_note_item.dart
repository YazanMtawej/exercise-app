
import 'package:exercise_app/exercise_cubit/exercise_cubit.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:exercise_app/views/edit_exercise_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseNoteItem extends StatelessWidget {
  const ExerciseNoteItem({super.key, required this.exercise});
final ExerciseModel exercise;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GestureDetector(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){
          return  EditExerciseView(exercise:exercise);
        }));
        },
        child: Container(
          
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          width: double.infinity,
         
          child: Column(
            
            children: [
             ListTile(
              title:  const Text(
                'Title',
                style: TextStyle(
                    fontSize: 33, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            subtitle:      const Text(
                'Sets',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              trailing:   IconButton(onPressed:(){
                 exercise.delete();
                BlocProvider.of<ExerciseCubit>(context).fetchAllMuscles();
              }, icon: const Icon(Icons.delete,color: Colors.blueGrey,size: 40,)),
             ),
            
              const Text(
                'weight',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text('Date',style: TextStyle(fontSize: 15,color: Colors.blueGrey),)),
            ],
          ),
        ),
      ),
    );
  }
}
