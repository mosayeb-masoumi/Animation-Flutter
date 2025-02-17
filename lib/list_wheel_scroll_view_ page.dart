import 'package:flutter/material.dart';

class ListViewScrollViewPage extends StatefulWidget {
  const ListViewScrollViewPage({super.key});

  @override
  State<ListViewScrollViewPage> createState() => _ListViewScrollViewPageState();
}

class _ListViewScrollViewPageState extends State<ListViewScrollViewPage> {
  List<Widget> list = const <Widget>[
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 1',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 2',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 3',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 4',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 5',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 6',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 7',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ElevatedButton(
      onPressed: null,
      child: Text(
        'Item 8',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 80,
        diameterRatio: 3.0,
        magnification: 1,
        offAxisFraction: 0.5,
        useMagnifier: true,
        // children: List.generate(
        //   10,
        //   (index) => ListTile(
        //     title: Text('Item $index'),
        //     tileColor: index % 2 == 0 ? Colors.blue : Colors.green,
        //   ),
        // ),
        children: list,
      ),
    );
  }
}

Widget buildCard(int i) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue,
    ),
    child: Center(
        child: Text(
      "title is : " + i.toString(),
      style: TextStyle(color: Colors.white, fontSize: 20),
    )),
  );
}
