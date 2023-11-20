import 'package:flutter/material.dart';

class DismissableListItemSwipeLeftPage extends StatefulWidget {
  const DismissableListItemSwipeLeftPage({Key? key}) : super(key: key);

  @override
  State<DismissableListItemSwipeLeftPage> createState() =>
      _DismissableListItemSwipeLeftPageState();
}

class _DismissableListItemSwipeLeftPageState
    extends State<DismissableListItemSwipeLeftPage> {
  final List<int> list = List<int>.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text("Wsipe item left or right to delete"),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: Container(
                      color: Colors.red,
                      child: Icon(Icons.delete),
                    ),
                    key: ValueKey<int>(list[index]),
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        list.removeAt(index);
                      });
                    },
                    child: ListTile(
                      title: Text("item ${list[index]}"),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
