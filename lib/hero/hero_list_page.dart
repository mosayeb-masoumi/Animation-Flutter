
import 'package:flutter/material.dart';

class HeroListPage extends StatefulWidget {
  const HeroListPage({super.key});

  @override
  State<HeroListPage> createState() => _HeroListPageState();
}

class _HeroListPageState extends State<HeroListPage> {

  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context , index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroListDetailScreen(item: items[index]),
                  ),
                );
              },
              child: Hero(
                  tag: items[index], // Unique tag for the hero transition,
                  child: Card(
                      margin: EdgeInsets.all(10),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                      child: Text(
                        items[index],
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  )),
            );
          }
      ),
    );
  }
}


class HeroListDetailScreen extends StatelessWidget {
  final String item;

  HeroListDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Hero(
          tag: item, // Same tag as in the HomeScreen
          child: Material(
            color: Colors.transparent,
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  item,
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}