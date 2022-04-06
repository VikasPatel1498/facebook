import 'package:facebook/models/post_data.dart';
import 'package:facebook/models/story_data.dart';
import 'package:facebook/widgets/friends_items.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class FriendRequestscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey.shade100),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  "Requests",
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey.shade100),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  "All Friends",
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
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
            //   child: Row(
            //     children: [
            //       OutlinedButton(
            //         onPressed: () {},
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all<Color>(
            //               Colors.grey.shade100),
            //           shape: MaterialStateProperty.all(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30.0),
            //             ),
            //           ),
            //         ),
            //         child: const Text(
            //           "Requests",
            //           style: TextStyle(
            //             color: Colors.black,
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 5),
            //         child: OutlinedButton(
            //           onPressed: () {},
            //           style: ButtonStyle(
            //             backgroundColor: MaterialStateProperty.all<Color>(
            //                 Colors.grey.shade100),
            //             shape: MaterialStateProperty.all(
            //               RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(30.0),
            //               ),
            //             ),
            //           ),
            //           child: const Text(
            //             "All Friends",
            //             style: TextStyle(
            //               color: Colors.black,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Divider(
              height: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "People You May Know",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Column(
          children:
              postData.map((e) => FriendItem(e.title, e.imageUrl)).toList(),
        ),
      ],
    );
  }
}
