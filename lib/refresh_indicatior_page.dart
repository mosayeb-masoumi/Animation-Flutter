import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  const RefreshIndicatorPage({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorPage> createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  List<String> items = ["item 1", "item 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: RefreshIndicator(
        color: Colors.white24,
        backgroundColor: Colors.orange,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          int nextItem = items.length + 1;
          items.add("item $nextItem");
          setState(() {});
        },
        child: ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(items[index]),
                  tileColor: Colors.white24,
                ),
              );
            }),
      )),
    );
  }
}
