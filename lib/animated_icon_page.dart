import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  const AnimatedIconPage({Key? key}) : super(key: key);

  @override
  State<AnimatedIconPage> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
    with TickerProviderStateMixin {

  bool isPlaying = false;
  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  _onPressed(){
    setState(() {
      isPlaying = !isPlaying;

      isPlaying ? controller.forward() : controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text("Animation icon"),),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.add_event, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.arrow_menu, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.close_menu, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.ellipsis_search, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.event_add, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.home_menu, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.list_view, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: controller),
              ),

              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.menu_home, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.pause_play, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: controller),
              ),

              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.search_ellipsis, progress: controller),
              ),
              IconButton(
                onPressed: _onPressed,
                icon: AnimatedIcon(icon: AnimatedIcons.view_list, progress: controller),
              ),



            ],
          ),
        ),
      ),
    );
  }
}