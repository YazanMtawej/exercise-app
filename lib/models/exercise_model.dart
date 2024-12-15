import 'package:hive/hive.dart';


part 'exercise_model.g.dart';


@HiveType(typeId: 0)
class ExerciseModel  extends HiveObject{

@HiveField(0)
  late final String title;
@HiveField(1)
  final String sets;
  @HiveField(2)
  final String wieghts;
  @HiveField(3)
  final String date;

  ExerciseModel( {required this.wieghts,  required this.title, required this.sets, required this.date});
}
