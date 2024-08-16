import 'package:calendar_view/calendar_view.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:remindee_app/constants.dart';

DateTime get _now => DateTime.now();

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
            WeekView(),

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
