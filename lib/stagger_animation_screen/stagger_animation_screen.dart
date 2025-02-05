import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class StaggerAnimationScreen extends StatefulWidget {
  const StaggerAnimationScreen({super.key});

  @override
  State<StaggerAnimationScreen> createState() => _StaggerAnimationScreenState();
}

class _StaggerAnimationScreenState extends State<StaggerAnimationScreen> {
  bool showListView = true;
  bool showGridView = false;
  bool showColumnView = false;

  int columnCount = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      showListView = true;
                      showGridView = false;
                      showColumnView = false;
                    });
                  }, child: Text("list View")),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      showListView = false;
                      showGridView = true;
                      showColumnView = false;
                    });
                  }, child: Text("grid View")),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      showListView = false;
                      showGridView = false;
                      showColumnView = true;
                    });
                  }, child: Text("column View")),
                ],
              ),

              Visibility(
                visible: showListView,
                  child: ListViewStaggerWidget()),

              Visibility(
                  visible: showGridView,
                  child: GridViewStaggerWidget()),

              Visibility(
                  visible: showColumnView,
                  child: ColumnViewStaggerWidget()),

            ],
          ),
        ),
      ),
    );
  }

  Widget ListViewStaggerWidget() {
    return AnimationLimiter(
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Container(width: double.infinity, height: 50, color: Colors.red,margin: EdgeInsets.all(5),),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget GridViewStaggerWidget() {
    return  AnimationLimiter(
      child: Expanded(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: columnCount,
          children: List.generate(
            100,
                (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Container(width: double.infinity, height: 50, color: Colors.blue,margin: EdgeInsets.all(5),),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget ColumnViewStaggerWidget() {
    return Expanded(
      child: AnimationLimiter(
        child: SingleChildScrollView(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
                Container(width: double.infinity, height: 50, color: Colors.green,margin: EdgeInsets.all(5),),
              ]
            ),
          ),
        ),
      ),
    );
  }
}



