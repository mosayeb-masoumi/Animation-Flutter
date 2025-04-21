import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:flutter/material.dart';

import 'package:elegant_notification/resources/arrays.dart';

class ElegantNotificationScreen extends StatefulWidget {
  const ElegantNotificationScreen({super.key});

  @override
  State<ElegantNotificationScreen> createState() =>
      _ElegantNotificationScreenState();
}

class _ElegantNotificationScreenState extends State<ElegantNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildSuccessNotif(context),
                SizedBox(
                  height: 5,
                ),
                buildErrorNotif(context),
                SizedBox(
                  height: 5,
                ),
                buildCustomNotif(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell buildCustomNotif(BuildContext context) {
    return InkWell(
      onTap: () {
        ElegantNotification(
          width: 360,
          position: Alignment.centerRight,
          animation: AnimationType.fromRight,
          stackedOptions: StackedOptions(
            key: 'top',
            type: StackedType.same,
            itemOffset: const Offset(-1, -6),
          ),
          title: const Text(
            'New version',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          description: const Text(
            'A new version is available to you please update.',
          ),
          progressIndicatorColor: Colors.orange,
          onDismiss: () {},
        ).show(context);
      },
      child: Container(
        width: 150,
        height: 100,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Custom notification\n(center right)',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  InkWell buildSuccessNotif(BuildContext context) {
    return InkWell(
      onTap: () {
        ElegantNotification.success(
          width: 360,
          isDismissable: false,
          stackedOptions: StackedOptions(
            key: 'top',
            type: StackedType.same,
            itemOffset: const Offset(-5, -5),
          ),
          title: const Text('Update'),
          description: const Text('Your data has been updated'),
          onDismiss: () {
            //Message when the notification is dismissed
          },
          onNotificationPressed: () {
            //Message when the notification is pressed
          },
        ).show(context);
      },
      child: Container(
          width: 250,
          height: 80,
          color: Colors.blue,
          child: const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Success theme notification stacked\n(top center)',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ))),
    );
  }

  InkWell buildErrorNotif(BuildContext context) {
    return InkWell(
        onTap: () {
          ElegantNotification.error(
            width: 360,
            stackedOptions: StackedOptions(
              key: 'topRight',
              type: StackedType.below,
              itemOffset: const Offset(0, 5),
            ),
            position: Alignment.topRight,
            animation: AnimationType.fromRight,
            title: const Text('Error'),
            description: const Text('Error example notification'),
            onDismiss: () {},
          ).show(context);
        },
        child: Container(
          width: 250,
          height: 80,
          color: Colors.red,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Error theme notification\n(top right)',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}
