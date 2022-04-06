import 'package:facebook/models/post_data.dart';
import 'package:facebook/models/story_data.dart';
import 'package:facebook/screens/profile_request.dart';
import 'package:facebook/widgets/story_item.dart';
import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // Container(
            //   child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              // bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(20.0),

                              // image: DecorationImage(
                              //     image: AssetImage('assets/images/person.jpeg'),
                              //     fit: BoxFit.cover),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                    Text(
                                      "Add Cover Photo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 130,
                                child: Container(
                                  alignment: Alignment(0, 20),
                                  child: CircleAvatar(
                                    radius: 62.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey[200],
                                          radius: 15.0,
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: 15.0,
                                            color: Color(0xFF404040),
                                          ),
                                        ),
                                      ),
                                      radius: 58.0,
                                      backgroundImage: AssetImage(
                                          'assets/images/person.jpeg'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ),
                // ),

                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 62, bottom: 7),
                    child: Text(
                      'Vikas Patel',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue.shade800),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add_circle_outlined,
                                    size: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Add to Story",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ),
                          SizedBox(
                            width: 7,
                          ),

                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey.shade400),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey.shade400),
                            ),
                            child: Icon(
                              Icons.more_horiz_outlined,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),

                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 12, right: 12, bottom: 1),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 0.7,
                  ),
                ),

                Column(
                  children: [
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.house_rounded),
                          title: Text(
                            "Current City",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.work),
                          title: Text(
                            "Workplace",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.school_rounded),
                          title: Text(
                            "School",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text(
                            "Hometown",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.favorite),
                          title: Text(
                            "Relationship Status",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.grey,
                      onTap: () {},
                      child: Ink(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(Icons.more_horiz_rounded),
                          title: Text(
                            "See Your About info",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 12, top: 1),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.shade50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Edit Public Details",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 13, left: 12, right: 12, bottom: 1),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 0.7,
                  ),
                ),

                ListTile(
                  leading: Text("Friends"),
                  trailing: Text(
                    "Find Friend",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 13, bottom: 10, left: 7),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "People You May Know",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: postData
                            .map((e) => ProfileRequest(
                                  e.title,
                                  e.imageUrl,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),

                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Text(
                          "Posts",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.linear_scale_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
                InkWell(
                  splashColor: Colors.grey,
                  onTap: () {},
                  child: Ink(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/person.jpeg'),
                      ),
                      title: Text(
                        "Whats on your mind?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.edit_outlined,
                                size: 25,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            Text(
                              "Status",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.image,
                                size: 25,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "Photo",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.flag_rounded,
                                size: 25,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "Life Event",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
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
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade200),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.image,
                                      size: 19,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Photos",
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
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade200),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.library_music,
                                      size: 19,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Music",
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade200),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.tungsten,
                                      size: 19,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Did You Know",
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

                InkWell(
                  splashColor: Colors.grey,
                  onTap: () {},
                  child: Ink(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/person.jpeg'),
                      ),
                      title: Text(
                        "Vikas Patel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            "1 Apr 1998 . ",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.groups_sharp,
                            size: 12,
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_horiz_rounded),
                    ),
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.emoji_nature_outlined),
                    ),
                    Text(
                      "Born on April 1,1998",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 5, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 25,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Like",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.messenger_outline_rounded,
                                size: 25,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Comment",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.share_rounded,
                                size: 25,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Share",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.grey[300],
                  child: Center(
                      child: Text(
                    "No Posts available",
                    style: TextStyle(color: Colors.grey),
                  )),
                )
              ],
            ),

            // margin: EdgeInsets.all(16.0),
            // decoration: BoxDecoration(
            //   // color: Colors.white,
            //   borderRadius: BorderRadius.circular(16.0),
            // ),
            // ),
          ],
        ),
      ],
    );
  }
}
