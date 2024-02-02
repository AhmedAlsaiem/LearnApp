import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Noti {
  static Future<void> notiInitialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialsize =
        const AndroidInitializationSettings('assets/images/logo.png');
    var iosInitialsize = const DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: androidInitialsize, iOS: iosInitialsize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> showBigTextNatification({
    var id = 0,
    required String title,
    required String body,
    var payload,
    required FlutterLocalNotificationsPlugin fln,
  }) async {
    var androidNotificationDetails = const AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      // channelDescription: 'channel_description',
      importance: Importance.max,
      priority: Priority.high,
    );
    var not = NotificationDetails(
        iOS: const DarwinNotificationDetails(),
        android: androidNotificationDetails);
    await fln.show(id, title, body, not);
  }
}
