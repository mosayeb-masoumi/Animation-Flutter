import 'package:flutter/material.dart';

class GridTilePage extends StatelessWidget {
  const GridTilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 250,
            width: 250,
            child: GridTile(
                header: const GridTileBar(
                  backgroundColor: Colors.black45,
                  leading: Icon(Icons.person),
                  title: Text("Image"),
                  trailing: Icon(Icons.menu),
                ),
                child: Image.asset("assets/images/beach.jpeg" , fit: BoxFit.fill,),

              footer: const GridTileBar(
                backgroundColor: Colors.black45,
                leading: Icon(Icons.access_alarms_outlined),
                title: Text("like"),
                trailing: Icon(Icons.favorite),
              ),

            ),

          ),
        ),
      ),
    );
  }
}