import 'package:facebook/models/post_data.dart';
import 'package:facebook/screens/home_story_screen.dart';
import 'package:facebook/widgets/post_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   child:
        ListView(
      shrinkWrap: true,
      children: [
        HomeStoryScreen(),
        Column(
          children: postData
              .map(
                (e) => PostItem(
                  e.title,
                  e.imageUrl,
                  e.notification,
                  e.profilepic,
                ),
              )
              .toList(),
        )
      ],
      // ),
    );
  }
}
