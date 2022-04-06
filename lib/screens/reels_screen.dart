import 'package:facebook/models/post_data.dart';
import 'package:facebook/screens/reels_tabbar_screen.dart';
import 'package:facebook/screens/tabbar_home_screen.dart';
import 'package:facebook/widgets/post_item.dart';
import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // TabbarHomeScreen();
        Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          // child:
          // Container(
          // height: double.infinity,
          child: ListView(
            // physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ReelsTabbarScreen(),
              // Column(
              //   children: postData.map((e) => PostItem(e.title, e.imageUrl)).toList(),
              // )
            ],
            // ),
          ),
        ),
        // )
      ],
    );
  }
}
