import 'package:flutter/material.dart';
import 'package:third_party/flutter_local_notification/notification_services.dart';

class FlutterLocalNotificationdemoUi extends StatefulWidget {
  const FlutterLocalNotificationdemoUi({super.key});

  @override
  State<FlutterLocalNotificationdemoUi> createState() =>
      _FlutterLocalNotificationdemoUiState();
}

class _FlutterLocalNotificationdemoUiState
    extends State<FlutterLocalNotificationdemoUi> {
  Notificationservices notificationservices = Notificationservices();
  @override
  void initState() {
    notificationservices.initialiseNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                notificationservices.sendnotification(
                    'This is a tittle', 'This is a body');
              },
              child: const Text('Send Notification'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationservices.sechedulenotification(
                    'secheduled Notification', 'Body');
              },
              child: const Text('Schedule Notification'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationservices.stopNotifications();
              },
              child: const Text('stop Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
