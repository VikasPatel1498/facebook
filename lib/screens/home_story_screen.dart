import 'package:facebook/models/post_data.dart';
import 'package:facebook/models/story_data.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/person.jpeg",
                  ),
                ),
                title: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Whrite somthing here...",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: IconButton(
                    icon: Icon(
                      Icons.image,
                      size: 32,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 10, left: 7),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.slow_motion_video_rounded,
                                  color: Colors.pink,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Reel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.groups,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Group",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              color: Colors.grey[300],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 180,
                        padding: EdgeInsets.only(
                            left: 12, top: 8, bottom: 8, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.grey[200],
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/person.jpeg",
                                            height: 100,
                                            width: 90,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const Text(
                                            "Create Story",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 35,
                                      right: 32,
                                      child: Icon(
                                        Icons.add_circle,
                                        size: 28,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: storyData
                        .map((e) => StoryItem(e.imageUrl, e.imageUrls))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
