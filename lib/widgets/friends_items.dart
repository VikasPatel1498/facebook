import 'package:flutter/material.dart';

class FriendItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  FriendItem(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            imageUrl,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        subtitle: Row(
          children: [
            // SizedBox(
            //   height: 25,
            //   width: 100,
            // child:
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue.shade800),
                ),
                child: Text(
                  "Add Friend",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            // ),
            SizedBox(
              width: 10,
            ),
            // SizedBox(
            //   height: 25,
            //   width: 100,
            // child:
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade400),
                ),
                child: Text(
                  "Remove",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
