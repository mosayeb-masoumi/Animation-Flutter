import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class PopupMenuItemPage extends StatefulWidget {
  const PopupMenuItemPage({Key? key}) : super(key: key);

  @override
  State<PopupMenuItemPage> createState() => _PopupMenuItemPageState();
}

class _PopupMenuItemPageState extends State<PopupMenuItemPage> {
  String title = "first item";
  String item1 = "first item";
  String item2 = "second item";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("item 1"),
                  value: item1,
                ),
                PopupMenuItem(
                  child: Text("item 2"),
                  value: item2,
                )
              ],
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("PopupOverExample"),
          const PopupOverExample()
        ],
      )),
    );
  }
}

class PopupOverExample extends StatelessWidget {
  const PopupOverExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPopover(
            context: context,
            bodyBuilder: (context) {
              return const PopoverMenuItems();
            },
            width: 250,
            height: 150,
            backgroundColor: Colors.deepPurple.shade300,
            direction: PopoverDirection.top);
      },
      child: const Icon(Icons.more_vert),
    );
  }
}

class PopoverMenuItems extends StatelessWidget {
  const PopoverMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.deepPurple[300],
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[200],
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[100],
        ),
      ],
    );
  }
}
