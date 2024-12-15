import 'package:device_preview/device_preview.dart';
import 'package:exercise_app/constants.dart';
import 'package:exercise_app/exercise_cubit/add_exercise_cubit/add_exercise_cubit.dart';
import 'package:exercise_app/exercise_cubit/exercise_cubit.dart';
import 'package:exercise_app/models/exercise_model.dart';
import 'package:exercise_app/views/exercise_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExerciseModelAdapter());
await Hive.openBox<ExerciseModel>(kExerciseBox);
  await Hive.openBox<ExerciseModel>(kChestBox);
  await Hive.openBox<ExerciseModel>(kBacktBox);
  await Hive.openBox<ExerciseModel>(kLegsBox);
  await Hive.openBox<ExerciseModel>(kShoulderBox);
  await Hive.openBox<ExerciseModel>(kTricepsBox);
  await Hive.openBox<ExerciseModel>(kBicepsBox);
  await Hive.openBox<ExerciseModel>(kHandBox);
  await Hive.openBox<ExerciseModel>(kAbdominalBox);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const ExerciseApp(),
    ),
  );
}

class ExerciseApp extends StatelessWidget {
  const ExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExerciseCubit(),
        ),
        BlocProvider(
          create: (context) => AddExerciseCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const ExerciseView(),
      ),
    );
  }
}
