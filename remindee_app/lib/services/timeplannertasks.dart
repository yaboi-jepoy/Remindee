import 'package:fluent_ui/fluent_ui.dart';
import 'package:time_planner/time_planner.dart';

class TimePlannerTaskModel {
  final int day;
  final int hour;
  final int minutes;
  final int minutesDuration;
  final int daysDuration;
  final String description;

  TimePlannerTaskModel({
    required this.day,
    required this.hour,
    required this.minutes,
    required this.minutesDuration,
    required this.daysDuration,
    required this.description,
  });

  TimePlannerTask toTimePlannerTask() {
    return TimePlannerTask(
      color: Colors.yellow,
      dateTime: TimePlannerDateTime(day: day, hour: hour, minutes: minutes),
      minutesDuration: minutesDuration,
      daysDuration: daysDuration,
      onTap: () {},
      child: Text(
        description,
        style: TextStyle(color: Colors.grey[350], fontSize: 12),
      ),
    );
  }

  factory TimePlannerTaskModel.fromTimePlannerTask(TimePlannerTask task) {
    return TimePlannerTaskModel(
      day: task.dateTime.day,
      hour: task.dateTime.hour,
      minutes: task.dateTime.minutes,
      minutesDuration: task.minutesDuration,
      daysDuration: task.daysDuration!,
      description: (task.child as Text).data!,
    );
  }

  Map<String, dynamic> toJson() => {
        'day': day,
        'hour': hour,
        'minutes': minutes,
        'minutesDuration': minutesDuration,
        'daysDuration': daysDuration,
        'description': description,
      };

  factory TimePlannerTaskModel.fromJson(Map<String, dynamic> json) {
    return TimePlannerTaskModel(
      day: json['day'],
      hour: json['hour'],
      minutes: json['minutes'],
      minutesDuration: json['minutesDuration'],
      daysDuration: json['daysDuration'],
      description: json['description'],
    );
  }
}
