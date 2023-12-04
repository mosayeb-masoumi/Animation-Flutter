import 'package:flutter/material.dart';

class CustomScrollExample4 extends StatelessWidget {
  const CustomScrollExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            backgroundColor: Colors.green,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("CustomScrollView"),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.tealAccent,
              height: 200,
              alignment: Alignment.center,
              child: const Text(
                "This is Container",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(childCount: 40, (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text("Grid Item $index"),
                );
              }),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 4)),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.amberAccent,
              height: 200,
              alignment: Alignment.center,
              child: const Text(
                "This is Container",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 100,
                      child: Card(
                        color: Colors.cyan[100 * (index % 9)],
                        child: Text("Item $index"),
                      ),
                    );
                  }),
            ),
          ),
          SliverFixedExtentList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 10, (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text("List item $index"),
                );
              }),
              itemExtent: 50.0)
        ],
      ),
    );
  }
}
