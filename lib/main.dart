import 'package:device_preview/device_preview.dart';
import 'package:exercise_app/constants.dart';
import 'package:exercise_app/views/exercise_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kExerciseBox);
  runApp( DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const ExerciseApp(),
    ),);
}

class ExerciseApp extends StatelessWidget {
  const ExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home:const ExerciseView() ,

    );
  }
}