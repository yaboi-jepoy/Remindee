import 'package:time_planner/time_planner.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:remindee_app/constants.dart';

class Schedulepage extends StatefulWidget {
  const Schedulepage({super.key});

  @override
  State<Schedulepage> createState() => _SchedulepageState();
}

class _SchedulepageState extends State<Schedulepage> {
  @override
  Widget build(BuildContext context) {
    return fluent.LayoutBuilder(
      builder: (context, constraints) {
        // calculate the position of the floating button
        double btnAddBPos = constraints.maxHeight * .05;
        double btnAddRPos = constraints.maxWidth * .09;

        return Stack(
          // last item in order on the child
          // is the top item in stack
          children: [
            // other items
            //*CALENDAR GOES HERE */
            const TimePlanner(
              startHour: 6,
              endHour: 23,
              setTimeOnAxis: true,
              headers: [
                TimePlannerTitle(title: "Sunday"),
                TimePlannerTitle(title: "Monday"),
                TimePlannerTitle(title: "Tuesday"),
                TimePlannerTitle(title: "Wednesday"),
                TimePlannerTitle(title: "Thursday"),
                TimePlannerTitle(title: "Friday"),
                TimePlannerTitle(title: "Saturday"),
              ],
            ),

            // the floating "add" button
            Positioned(
              bottom: btnAddBPos,
              right: btnAddRPos,
              child: FloatingActionButton(
                onPressed: () {},
                mini: true,
                child: Icon(
                  fluent.FluentIcons.add,
                  color: primaryYellow,
                  size: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// functions related to schedule page
void display_sample_notif() {}
