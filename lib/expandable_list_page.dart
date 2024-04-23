
import 'package:flutter/material.dart';

import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExpandableListPage extends StatefulWidget {
  const ExpandableListPage({super.key});

  @override
  State<ExpandableListPage> createState() => _ExpandableListPageState();
}

class _ExpandableListPageState extends State<ExpandableListPage> {


  final GlobalKey<ExpansionTileCardState> cardA =  GlobalKey();
  List<MonthModel> monthModel  =[];


  @override
  void initState() {
    _createList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('ExpansionTileCard Demo'),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: monthModel.length,
            key: cardA,
            itemBuilder: (BuildContext context , int index){
              return _buildItemList(monthModel[index]);
            }

        )
    );
  }




  Widget _buildItemList(MonthModel model) {
    return Card(

      child: ExpansionTile(

        title: Text(model.title , style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold , fontSize: 16),),
        children: [   // for exandable content
          ListTile(
            title: Text(model.description , style: const TextStyle(color: Colors.blue , fontSize: 14),),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            buttonHeight: 52.0,
            buttonMinWidth: 90.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  cardA.currentState?.expand();
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.arrow_downward),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text('Open'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  cardA.currentState?.collapse();
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.arrow_upward),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text('Close'),
                  ],
                ),
              ),
            ],
          )
        ],

      ),
    );
  }




  void _createList() {
    monthModel.add(new MonthModel("title 1", "description 1"));
    monthModel.add(new MonthModel("title 2", "description 2"));
    monthModel.add(new MonthModel("title 3", "description 3"));
    monthModel.add(new MonthModel("title 4", "description 4"));
    monthModel.add(new MonthModel("title 5", "description 5"));
  }
}

class MonthModel{
  String title;
  String description;

  MonthModel(this.title, this.description);
}