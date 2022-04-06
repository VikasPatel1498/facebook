import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationItem extends StatelessWidget {
  final String notification;
  final String imageUrl;
  NotificationItem(this.notification, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.grey,
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    imageUrl,
                  ),
                ),
                Positioned(
                  right: 1,
                  bottom: 1,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey[800],
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              // child: Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5, left: 1, bottom: 3, right: 1),
                child: Text(
                  notification,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // ),
            ),
            subtitle: Row(
              children: [
                Text(
                  DateFormat('E hh:mm a').format(
                    DateTime.now(),
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(
              Icons.more_horiz_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
