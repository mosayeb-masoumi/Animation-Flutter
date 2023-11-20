import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class ContainerTransformationPage extends StatefulWidget {
  const ContainerTransformationPage({Key? key}) : super(key: key);

  @override
  State<ContainerTransformationPage> createState() =>
      _ContainerTransformationPageState();
}

//  add library animations: ^2.0.7

class _ContainerTransformationPageState
    extends State<ContainerTransformationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("click on button/Item"),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return OpenContainer(
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedColor: Theme.of(context).cardColor,
                    closedElevation: 0.0,
                    openElevation: 4.0,
                    transitionDuration: Duration(milliseconds: 1000),
                    openBuilder: (BuildContext context, VoidCallback _) =>
                        SecondPage(),
                    closedBuilder:
                        (BuildContext _, VoidCallback openContainer) {
                      return Container(
                        width: size.width,
                        margin: EdgeInsets.all(5),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "    item $index",
                              style: TextStyle(color: Colors.white),
                            )),
                      );
                    });
              }),
        ),
        floatingActionButton: OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            closedColor: Colors.green,
            closedElevation: 0.0,
            openElevation: 4.0,
            transitionDuration: const Duration(milliseconds: 1500),
            openBuilder: (BuildContext context, VoidCallback _) => SecondPage(),
            closedBuilder: (context, action) {
              return Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber),
                child: Icon(Icons.add),
              );
            }));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            Text(
              "Second page",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
