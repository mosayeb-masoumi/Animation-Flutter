import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExpansionTileCardPage extends StatefulWidget {
  const ExpansionTileCardPage({super.key});

  @override
  State<ExpansionTileCardPage> createState() => _ExpansionTileCardPageState();
}

class _ExpansionTileCardPageState extends State<ExpansionTileCardPage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExpansionTileCard(
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            key: cardA,
            leading: CircleAvatar(child: Image.asset("assets/images/city.jpeg")),
            title: const Text("Flutter Dev's"),
            subtitle: const Text("FLUTTER DEVELOPMENT COMPANY"),
            children: <Widget>[
             const  Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "FlutterDevs specializes in creating cost-effective and efficient applications with our perfectly crafted,"
                    " creative and leading-edge flutter app development solutions for customers all around the globe.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonHeight: 52.0,
                buttonMinWidth: 90.0,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      cardA.currentState?.expand();
                    },
                    child: const Column(
                      children: <Widget>[
                        Icon(Icons.arrow_downward),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Text('Open'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cardA.currentState?.collapse();
                    },
                    child: const Column(
                      children: <Widget>[
                        Icon(Icons.arrow_upward),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Text('Close'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Column(
                      children: <Widget>[
                        Icon(Icons.swap_vert),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Text('Toggle'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
