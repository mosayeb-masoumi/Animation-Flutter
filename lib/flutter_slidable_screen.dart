
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableScreen extends StatefulWidget {
  const FlutterSlidableScreen({super.key});

  @override
  State<FlutterSlidableScreen> createState() => _FlutterSlidableScreenState();
}

class _FlutterSlidableScreenState extends State<FlutterSlidableScreen> {


  void onPressed(){

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Column(
            children: [
          
              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(0),
          
                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const ScrollMotion(),

                  dragDismissible: true,
                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),
          
                  // All actions are defined in the children parameter.
                  children:  [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),
          
                // The end action pane is the one at the right or the bottom side.
                endActionPane:  ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      // An action can be bigger than the others.
                      flex: 2,
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.archive,
                      label: 'Archive',
                    ),
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                    ),
                  ],
                ),
          
                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: Container(
                    color: Colors.blueGrey,
                    child: Center(child: const ListTile(title: Text('Slide me right and left')))),
              ),

              SizedBox(height: 10,),

              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(1),

                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const BehindMotion(),

                  dragDismissible: false,
                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  children:  [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                child: Container(
                    color: Colors.blueGrey,
                    child: Center(child: const ListTile(title: Text('Slide me right BehindMotion')))),
              ),

              SizedBox(height: 10,),

              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(2),
                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const DrawerMotion(),

                  dragDismissible: false,
                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  children:  [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                child: Container(
                    color: Colors.blueGrey,
                    child: Center(child: const ListTile(title: Text('Slide me right DrawerMotion')))),
              ),

              SizedBox(height: 10,),

              Slidable(
                // Specify a key if the Slidable is dismissible.
                key: const ValueKey(3),
                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const StretchMotion(),

                  dragDismissible: false,
                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  children:  [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: (context) => onPressed(),
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                child: Container(
                    color: Colors.blueGrey,
                    child: Center(child: const ListTile(title: Text('Slide me right StretchMotion')))),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
