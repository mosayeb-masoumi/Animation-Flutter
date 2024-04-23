import 'package:flutter/material.dart';
import 'package:star_menu/star_menu.dart';

class StarMenuPage extends StatefulWidget {
  const StarMenuPage({Key? key}) : super(key: key);

  @override
  State<StarMenuPage> createState() => _StarMenuPageState();
}

class _StarMenuPageState extends State<StarMenuPage> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<double> sliderValue = ValueNotifier(0.5);

    // entries for the dropdown menu
    List<Widget> upperMenuItems = [
      Text('menu entry 1'),
      Text('menu entry 2'),
      Text('menu entry 3'),
      Text('menu entry 4'),
      Text('menu entry 5'),
      Text('menu entry 6'),
    ];

    // other entries
    // Every items may have a sub-menu.
    // Here the sub-menus are added with [addStarMenu] extension
    List<Widget> otherEntries = [
      FloatingActionButton(
        heroTag: "",
        onPressed: () {
          var a = 5;
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      FloatingActionButton(
        heroTag: "tag1",
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add_call),
      ).addStarMenu(
          items: upperMenuItems, params: StarMenuParameters.dropdown(context)),
      FloatingActionButton(
        heroTag: "tag2",
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: Icon(Icons.adb),
      ).addStarMenu(
          items: upperMenuItems, params: StarMenuParameters.dropdown(context)),
      FloatingActionButton(
        heroTag: "tag3",
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(Icons.home),
      ).addStarMenu(
          items: upperMenuItems, params: StarMenuParameters.dropdown(context)),
      FloatingActionButton(
        heroTag: "tag4",
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.delete),
      ).addStarMenu(
          items: upperMenuItems, params: StarMenuParameters.dropdown(context)),
      FloatingActionButton(
        heroTag: "tag5",
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.get_app),
      ).addStarMenu(
          items: upperMenuItems, params: StarMenuParameters.dropdown(context)),
    ];

    // bottom left menu entries
    List<Widget> chipsEntries = [
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('of widgets'),
      ),
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('any kind'),
      ),
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('almost'),
      ),
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('can be'),
      ),
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('entries'),
      ),
      Chip(
        avatar: CircleAvatar(child: const Text('SM')),
        label: const Text('The menu'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('StarMenu demo'),
        actions: [
          // upper bar menu
          StarMenu(
            params: StarMenuParameters.dropdown(context).copyWith(
              backgroundParams: BackgroundParams().copyWith(
                sigmaX: 3,
                sigmaY: 3,
              ),
            ),
            items: upperMenuItems,
            onItemTapped: (index, _) => print('Item $index tapped'),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            // center menu with default [StarMenuParameters] parameters
            Align(
              alignment: Alignment.center,
              child: StarMenu(
                params: StarMenuParameters(),
                items: otherEntries,
                child: FloatingActionButton(
                  heroTag: "",
                  onPressed: () {},
                  mini: true,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add),
                ),
              ),
            ),

            // center right menu.
            Align(
              alignment: Alignment.centerRight,
              child: StarMenu(
                params: StarMenuParameters.arc(
                  context,
                  ArcType.semiLeft,
                  radiusX: 110,
                  radiusY: 200,
                ),
                items: otherEntries,
                child: FloatingActionButton(
                    heroTag: "",
                    onPressed: () {},
                    child: Icon(Icons.home_work_outlined)),
              ),
            ),

            // bottom right panel menu
            Align(
              alignment: Alignment.bottomRight,
              child: StarMenu(
                params: StarMenuParameters.panel(context, columns: 3)
                    .copyWith(centerOffset: Offset(-150, -150)),
                items: [
                  IconMenu(icon: Icons.skip_previous, text: 'previous'),
                  IconMenu(icon: Icons.play_arrow, text: 'play'),
                  IconMenu(icon: Icons.skip_next, text: 'next'),
                  IconMenu(icon: Icons.album, text: 'album'),
                  IconMenu(icon: Icons.alarm, text: 'alarm'),
                  IconMenu(icon: Icons.info_outline, text: 'info'),
                  SizedBox(
                    width: 180,
                    height: 20,
                    child: ValueListenableBuilder<double>(
                        valueListenable: sliderValue,
                        builder: (_, v, __) {
                          return Slider(
                              value: v,
                              onChanged: (value) {
                                sliderValue.value = value;
                              });
                        }),
                  ),
                ],
                child: FloatingActionButton(
                    heroTag: "",
                    onPressed: () {},
                    child: Icon(Icons.grid_view)),
              ),
            ),

            // bottom right panel menu
            Align(
              alignment: Alignment.bottomLeft,
              child: StarMenu(
                params: StarMenuParameters(
                  shape: MenuShape.linear,
                  linearShapeParams: LinearShapeParams(
                    angle: 90,
                    alignment: LinearAlignment.left,
                    space: 15,
                  ),
                  animationCurve: Curves.easeOutCubic,
                  centerOffset: Offset(50, -50),
                  openDurationMs: 150,
                ),
                items: chipsEntries,
                child: FloatingActionButton(
                    heroTag: "",
                    onPressed: () {},
                    child: Icon(Icons.view_stream_rounded)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconMenu({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 6),
        Text(text),
      ],
    );
  }
}
