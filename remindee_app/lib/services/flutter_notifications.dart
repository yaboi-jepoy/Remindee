import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  // instance of the notif plugin
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // initialize function
  static void initialize() {
    // init for android
    const InitializationSettings initializationSettingsAndroid =
        InitializationSettings(
            android: AndroidInitializationSettings("chibiyanami"));

    _notificationsPlugin.initialize(
      initializationSettingsAndroid,
      // for handling notif receive events
      onDidReceiveNotificationResponse: (details) {
        if (details.input != null) {}
      },
    );
  }
}
