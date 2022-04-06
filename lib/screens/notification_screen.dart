import 'package:facebook/models/post_data.dart';
import 'package:facebook/widgets/friends_items.dart';
import 'package:facebook/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
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
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 10),
              child: Text(
                "Earlier",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Column(
          children: postData
              .map((e) => NotificationItem(e.notification, e.imageUrl))
              .toList(),
        ),
      ],
    );
  }
}
