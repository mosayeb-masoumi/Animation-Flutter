import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidPullToRefreshPage extends StatefulWidget {
  const LiquidPullToRefreshPage({Key? key}) : super(key: key);

  @override
  State<LiquidPullToRefreshPage> createState() =>
      _LiquidPullToRefreshPageState();
}

class _LiquidPullToRefreshPageState extends State<LiquidPullToRefreshPage> {

  List<String> list = [];

  @override
  void initState() {
    super.initState();

    _getList();
  }


  Future<void> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    _getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liquid pull to refresh"),),

      // body: SingleChildScrollView(

        body: LiquidPullToRefresh(
          onRefresh:_handleRefresh ,
          // animSpeedFactor: 3,
           springAnimationDurationInMilliseconds: 500,
           backgroundColor: Colors.pink,
           color: Colors.grey,
           showChildOpacityTransition: true,
          child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 70,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Center(child: Text(
                      list[index], style: TextStyle(color: Colors.white),)),
                  );
                }),
        ),

      // ),
    );
  }

  void _getList() {
    list.add("ali");
    list.add("reza");
    list.add("hassan");
    list.add("milad");
    list.add("ali");
    list.add("reza");
    list.add("hassan");
    list.add("milad");
    list.add("ali");
    list.add("reza");
    list.add("hassan");
    list.add("milad");
  }


}
