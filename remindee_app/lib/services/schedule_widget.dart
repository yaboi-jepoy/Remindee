import 'package:fluent_ui/fluent_ui.dart';
import 'package:time_planner/time_planner.dart';

Widget showTimePlanner() {
  return const TimePlanner(
    startHour: 6,
    endHour: 23,
    headers: [
      TimePlannerTitle(title: 'Monday'),
      TimePlannerTitle(title: 'Tuesday'),
      TimePlannerTitle(title: 'Wednesday'),
      TimePlannerTitle(title: 'Thursday'),
      TimePlannerTitle(title: 'Friday'),
      TimePlannerTitle(title: 'Saturday'),
      TimePlannerTitle(title: 'Sunday'),
    ],
  );
}
