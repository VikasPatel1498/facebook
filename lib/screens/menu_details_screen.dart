import 'package:facebook/models/post_data.dart';
import 'package:facebook/screens/profile_request.dart';

import 'package:flutter/material.dart';

class MenuDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // ListView(
            //   shrinkWrap: true,
            //   scrollDirection: Axis.vertical,
            //   children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text(
                "Vikas Patel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              subtitle: Text(
                "See your profile",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.access_time,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Memories"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.person_search_rounded,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Find Friends"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.groups_rounded,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Groups"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.storefront_outlined,
                                  color: Colors.brown,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Marketplace"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.ondemand_video_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Videos on Watch"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.purple,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Saved"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.slow_motion_video_outlined,
                                  color: Colors.pink,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Reels"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.flag,
                                  color: Colors.orange,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Pages"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.gamepad,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Gamming"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.event_note_sharp,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Events"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.campaign_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Campus"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.live_tv_rounded,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Live Videos"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.approval_rounded,
                                  color: Colors.purple,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Avatars"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Favorites"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.person_pin_circle_rounded,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Nearby Friends"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 12),
                                child: Icon(
                                  Icons.recent_actors,
                                  color: Colors.lightGreenAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, bottom: 8),
                                child: Text("Most Recent"),
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 10, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "See More",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),

            InkWell(
              onTap: () {},
              child: Ink(
                child: ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Community Resources"),
                  trailing: Icon(Icons.expand_more_outlined),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: Ink(
                child: ListTile(
                  leading: Icon(Icons.api_outlined),
                  title: Text("Also from Meta"),
                  trailing: Icon(Icons.expand_more_outlined),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: Ink(
                child: ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text("Help & Support"),
                  trailing: Icon(Icons.expand_more_outlined),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: Ink(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings & Privacy"),
                  trailing: Icon(Icons.expand_more_outlined),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 10, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Log Out",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
