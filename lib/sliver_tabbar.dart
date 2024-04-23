import 'package:flutter/material.dart';

class SliverTabbar extends StatefulWidget {
  const SliverTabbar({Key? key}) : super(key: key);

  @override
  State<SliverTabbar> createState() => _SliverTabbarState();
}

class _SliverTabbarState extends State<SliverTabbar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                expandedHeight: 300,
                // collapsedHeight: 100,
                toolbarHeight: 50,
                backgroundColor: Colors.blueGrey,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                // to remove back button

                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,

                  background: Container(
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text("مسیب معصومی"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png"),
                                          fit: BoxFit.cover),
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                                "hdsfhuihkjhsdflkhaiuwerfi8wqeyhifhasifdhl")
                          ],
                        ),
                      ],
                    ),
                  ),

                  // background: Image.network(
                  //   "https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png",
                  //   fit: BoxFit.cover,
                  // ) //Images.network
                ),

                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: Container(
                    color: Colors.blueGrey,
                    child: const TabBar(
                      isScrollable: false,
                      indicatorColor: Colors.yellow,
                      labelColor: Colors.yellow,
                      unselectedLabelColor: Colors.red,
                      tabs: [
                        Tab(text: "Call"),
                        Tab(text: "Message"),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              //first tab
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("first tab"),
                ),
              ),

              // second tab
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("second tab"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
