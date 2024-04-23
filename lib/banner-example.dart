import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  padding: const EdgeInsets.all(10),
                  content: const Text("Description"),
                  leading: Icon(Icons.notifications_active_outlined),
                  elevation: 5,
                  backgroundColor: Colors.yellow,
                  actions: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: Text("Dismiss"))
                  ]));
            },
            child: Text("Open")),
      ),
    );
  }
}
