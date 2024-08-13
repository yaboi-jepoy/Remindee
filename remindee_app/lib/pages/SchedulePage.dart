import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';

class Schedulepage extends StatefulWidget {
  const Schedulepage({super.key});

  @override
  State<Schedulepage> createState() => _SchedulepageState();
}

class _SchedulepageState extends State<Schedulepage> {
  @override
  Widget build(BuildContext context) {
    return fluent.LayoutBuilder(builder: (context, constraints) {
      // calculate the position of the floating button
      double btnAddBPos = constraints.maxHeight * .05;
      double btnAddRPos = constraints.maxWidth * .09;

      return Stack(
        // last item in order on the child
        // is the top item in stack
        children: [
          // other items
          Placeholder(),

          // the floating "add" button
          Positioned(
            bottom: btnAddBPos,
            right: btnAddRPos,
            child: FloatingActionButton(
              onPressed: () {},
              mini: true,
              child: const Icon(
                fluent.FluentIcons.add,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      );
    });
  }
}
