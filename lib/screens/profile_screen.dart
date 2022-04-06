import 'package:facebook/models/post_data.dart';
import 'package:facebook/models/story_data.dart';
import 'package:facebook/screens/home_story_screen.dart';
import 'package:facebook/screens/profile_detail_screen.dart';
import 'package:facebook/widgets/post_item.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        // HomeStoryScreen(),
        ProfileDetailScreen(),
      ],
    );
  }
}
