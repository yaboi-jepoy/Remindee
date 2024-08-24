import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart' as sf;

Widget showCalendar() {
  return sf.SfCalendar(
    view: sf.CalendarView.week,
  );
}
