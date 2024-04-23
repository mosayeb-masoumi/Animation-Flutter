import 'package:flutter/material.dart';

class CustomScrollExample1 extends StatefulWidget {
  const CustomScrollExample1({super.key});

  @override
  State<CustomScrollExample1> createState() => _CustomScrollExample1State();
}

class _CustomScrollExample1State extends State<CustomScrollExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            floating: true,
            title: Text(
              "This is AppBar",
              style: TextStyle(color: Colors.red),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 5, (context, index) {
              return Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.green,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      "Section $index",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, subIndex) {
                        return ListTile(
                          title: Text('Item $subIndex in Section $index'),
                        );
                      })
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
