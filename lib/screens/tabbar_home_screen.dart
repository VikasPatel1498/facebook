import 'package:facebook/screens/friend_request_screen.dart';
import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/screens/menu_details_screen.dart';

import 'package:facebook/screens/notification_screen.dart';
import 'package:facebook/screens/profile_screen.dart';
import 'package:facebook/screens/reels_screen.dart';
// import 'package:facebook/widgets/reels_screen.dart';
import 'package:flutter/material.dart';

class TabbarHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                elevation: 0,
                backgroundColor: Colors.white,
                actions: [
                  const Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image(
                        image: AssetImage(
                          "assets/images/Facebook-Logo.png",
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
                bottom: const TabBar(
                  labelColor: Colors.blueAccent,
                  unselectedLabelColor: Colors.black,
                  // indicatorColor: Colors.blueAccent,
                  // isScrollable: true,
                  tabs: [
                    Tab(
                      child: Icon(
                        Icons.home_outlined,
                        size: 27,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.people_outline,
                        size: 27,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.ondemand_video_rounded,
                        size: 27,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 27,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 27,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.menu_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              HomeScreen(),
              FriendRequestscreen(),
              ReelsScreen(),
              ProfileScreen(),
              NotificationScreen(),
              MenuDetailScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
