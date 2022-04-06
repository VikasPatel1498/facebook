import 'package:facebook/models/post_data.dart';
import 'package:facebook/models/story_data.dart';
import 'package:facebook/widgets/post_item.dart';
import 'package:facebook/widgets/reels_item.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class ReelsTabbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: SizedBox(
            height: 580,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: NestedScrollView(
                scrollDirection: Axis.vertical,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: false,
                      floating: true,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      actions: [
                        const Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Watch",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(40), //kToolbarHeight
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.topLeft,
                          child: TabBar(
                              labelColor: Colors.blueAccent,
                              unselectedLabelColor: Colors.black,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue[50]),
                              // isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.tab,
                              isScrollable: true,
                              labelPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                              indicatorWeight: 1,
                              tabs: [
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      "For You",
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text("Live"),
                                ),
                                Tab(
                                  child: Text("Music"),
                                ),
                                Tab(
                                  child: Text("Gaming"),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: postData
                            .map((e) => ReelsItem(e.title, e.imageUrl))
                            .toList(),
                      ),
                    ),
                    Container(
                      child: Text("data"),
                    ),
                    Container(
                      child: Text("data"),
                    ),
                    Container(
                      child: Text("data"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:facebook/models/post_data.dart';
// import 'package:facebook/models/story_data.dart';
// import 'package:facebook/screens/home_screen.dart';
// import 'package:facebook/screens/home_story_screen.dart';
// import 'package:facebook/screens/reels_screen.dart';
// import 'package:facebook/widgets/post_item.dart';
// import 'package:facebook/widgets/reels_item.dart';
// import 'package:facebook/widgets/story_item.dart';
// import 'package:flutter/material.dart';

// class ReelsTabbarScreen extends StatefulWidget {
//   @override
//   State<ReelsTabbarScreen> createState() => _ReelsTabbarScreenState();
// }

// class _ReelsTabbarScreenState extends State<ReelsTabbarScreen>
//     with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = new TabController(length: 2, vsync: this);
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _tabController.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     double screenHeight = MediaQuery.of(context).size.height;
// //     return Container(
// //       height: screenHeight * 0.950,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.white,
// //           elevation: 0,
// //           title: Text('Statistics'),
// //           bottom: TabBar(
// //               controller: _tabController,
// //               indicatorColor: Colors.orange,
// //               labelColor: Colors.orange,
// //               unselectedLabelColor: Colors.black54,
// //               tabs: <Widget>[
// //                 Tab(
// //                   text: ('Pokhara Lekhnath'),
// //                 ),
// //                 Tab(
// //                   text: ('Outside Pokhara-Lekhnath'),
// //                 ),
// //               ]),
// //         ),
// //         body: TabBarView(
// //           children: <Widget>[
// //             NestedTabBar(),
// //             NestedTabBar(),
// //           ],
// //           controller: _tabController,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class NestedTabBar extends StatefulWidget {
// //   @override
// //   _NestedTabBarState createState() => _NestedTabBarState();
// // }

// // class _NestedTabBarState extends State<NestedTabBar>
// //     with TickerProviderStateMixin {
//   late TabController _nestedTabController;
//   @override
//   void initState() {
//     super.initState();
//     _nestedTabController = new TabController(length: 4, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _nestedTabController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         Row(
//           children: [
//             const Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Text(
//                   "Watch",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.black),
//                 ),
//               ),
//             ),
//             Spacer(),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.person,
//                 color: Colors.black,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             )
//           ],
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             TabBar(
//               labelColor: Colors.blueAccent,
//               unselectedLabelColor: Colors.black,
//               indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.blue[50]),
//               // isScrollable: true,
//               indicatorSize: TabBarIndicatorSize.tab,
//               isScrollable: true,
//               labelPadding: EdgeInsets.only(left: 10, right: 10),
//               indicatorWeight: 1,

//               controller: _nestedTabController,
//               // indicatorColor: Colors.orange,
//               // labelColor: Colors.orange,
//               // unselectedLabelColor: Colors.black54,
//               // isScrollable: true,
//               tabs: <Widget>[
//                 Tab(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: Text(
//                       "For You",
//                     ),
//                   ),
//                 ),
//                 Tab(
//                   child: Text("Live"),
//                 ),
//                 Tab(
//                   child: Text("Music"),
//                 ),
//                 Tab(
//                   child: Text("Gaming"),
//                 ),
//               ],
//             ),
//             Container(
//               height: screenHeight * 0.70,
//               // margin: EdgeInsets.only(left: 1.0, right: 1.0),
//               child: TabBarView(
//                 controller: _nestedTabController,
//                 children: <Widget>[
//                   SingleChildScrollView(
//                     child: Column(
//                       children: postData
//                           .map((e) => ReelsItem(e.title, e.imageUrl))
//                           .toList(),
//                     ),
//                   ),
// //                     // ),
//                   Container(
//                     child: Text("data"),
//                   ),
//                   Container(
//                     child: Text("data"),
//                   ),
//                   Container(
//                     child: Text("data"),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
