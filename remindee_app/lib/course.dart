import 'package:hive/hive.dart';

part 'course.g.dart';

@HiveType(typeId: 1)
class Course {
  Course(
      {required this.courseCode,
      required this.section,
      required this.room,
      required this.time,
      required this.day,
      required this.color});
  @HiveField(0)
  String courseCode;

  @HiveField(1)
  String section;

  @HiveField(2)
  String room;

  @HiveField(3)
  String time;

  @HiveField(4)
  String day;

  @HiveField(5)
  String color;
}
