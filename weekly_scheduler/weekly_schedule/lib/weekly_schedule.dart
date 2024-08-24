library weekly_schedule;

class Subject {
  final String day;
  final DateTime startTime;
  final DateTime endTime;
  final String? subject;
  final String? room;

  Subject({
    required this.day,
    required this.startTime,
    required this.endTime,
    this.subject,
    this.room,
  });
}
