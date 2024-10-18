import 'package:device_preview/device_preview.dart';
import 'package:exercise_app/views/exercise_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
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