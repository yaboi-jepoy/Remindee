import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/rendering.dart';
import 'package:remindee_app/pages/HomePage.dart';
import 'package:remindee_app/pages/SchedulePage.dart';
import 'package:remindee_app/pages/SettingsPage.dart';
import 'package:remindee_app/services/awesome_notifications.dart';

void main() async {
  // initialize permissions
  await NotificationService.initializeNotification();

  debugPaintSizeEnabled = false; // show debug lines
  runApp(MainApp());
}

// firebase background handler
//! Future backgroundHandler(RemoteMessage msg) async {}

// ignore: must_be_immutable
class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
// test variables
  int _currentPage = 0;

  // initialize flutter notifications package
  @override
  void initState() {
    super.initState();
  }

// sample task

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: FluentThemeData(
        accentColor: Colors.yellow,
        brightness: Brightness.dark,
      ),
      home: NavigationView(
        //* Title Bar
        appBar: const NavigationAppBar(
          title: Center(
            child: Text(
              'Remindee!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          automaticallyImplyLeading: false,
        ),

        pane: NavigationPane(
          footerItems: [
            //* Settings
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              body: SettingsPage(),
              title: const Text("Settings"),
            )
          ],
          displayMode: PaneDisplayMode.compact,
          items: [
            //* Home Page
            PaneItem(
              icon: const Icon(FluentIcons.home),
              body: HomePage(),
              title: const Text("Home"),
            ),

            //* Schedule
            PaneItem(
              icon: const Icon(FluentIcons.calendar_week),
              body: Schedulepage(),
              title: const Text("Schedule"),
            ),
          ],
          selected: _currentPage,
          onChanged: (index) => setState(() => _currentPage = index),
        ),
      ),
    );
  }
}
