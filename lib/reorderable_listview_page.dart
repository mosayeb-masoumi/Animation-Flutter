import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewPage> createState() =>
      _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  //create list
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("long press and drag item to another place"),
            Expanded(
              child: ReorderableListView(
                shrinkWrap: true,
                  children: List.generate(items.length, (index) => ListTile(
                    key: Key("$index"),
                    tileColor: items[index].isOdd ? Colors.grey:Colors.green,
                    title: Text("item ${items[index]}"),
                    trailing: Icon(Icons.drag_handle_sharp),
                  )),
                onReorder: (int oldIndex, int newIndex){
                    setState(() {
                      if(oldIndex < newIndex){
                        newIndex -= 1;
                      }
                      final int item = items.removeAt(oldIndex);
                      items.insert(newIndex, item);
                    });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
