import 'package:exercise_app/exercise_cubit/exercise_cubit.dart';
import 'package:exercise_app/widgets/custom_appbar.dart';
import 'package:exercise_app/widgets/exercise_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusclesViewBody extends StatefulWidget {
  const MusclesViewBody({super.key, required this.title});
  final String title;

  @override
  State<MusclesViewBody> createState() => _MusclesViewBodyState();
}

class _MusclesViewBodyState extends State<MusclesViewBody> {
   @override
  void initState(){
    BlocProvider.of<ExerciseCubit>(context).fetchAllMuscles();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: widget.title,
            icon: Icons.home,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Center(
              child: Text(
            'Add exersice to ${widget.title}',
            style: const TextStyle(fontSize: 16),
          )),
          const Expanded(child: ExerciseListView()),
        ],
      ),
    );
  }
}
