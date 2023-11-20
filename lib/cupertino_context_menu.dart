import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuPage extends StatefulWidget {
  const CupertinoContextMenuPage({Key? key}) : super(key: key);

  @override
  State<CupertinoContextMenuPage> createState() => _CupertinoContextMenuPageState();
}

class _CupertinoContextMenuPageState extends State<CupertinoContextMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("long lcik on image menu will be appear"),
          Center(
            child: SizedBox(
              width: 100, height: 100,

              child: CupertinoContextMenu(
                  actions: [
                    CupertinoContextMenuAction(
                        child: Text("Action 1"),onPressed: (){Navigator.pop(context);},
                    ),

                    CupertinoContextMenuAction(
                      child: Text("Action 2"),onPressed: (){Navigator.pop(context);},
                    ),

                  ],
                  child: Image.asset("assets/images/beach.jpeg")),
            ),
          ),
        ],
      ),
    );
  }
}