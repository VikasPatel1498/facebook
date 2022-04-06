import 'package:flutter/material.dart';

class ReelsItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  ReelsItem(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 7,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(imgUrl),
                    ),
                    title: Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    subtitle: Text(
                      "Recommended Post",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 7, left: 10, bottom: 3, right: 2),
                child: Text(
                  'To control the text that is displayed in the text field, use the controller.Its different from onSubmitted because it has a default value which ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 320,
          width: double.infinity,
          child: Image.asset(
            imgUrl,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Expanded(
              child: ListTile(
                minLeadingWidth: 0,
                leading: CircleAvatar(
                  radius: 8,
                  child: Icon(
                    Icons.thumb_up_alt_sharp,
                    size: 9,
                  ),
                ),
                title: Text(
                  "vikas patel and 31 others",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                trailing: Text(
                  "5 comments",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
        // Divider(),
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
        SizedBox(
          height: 35,
        )
      ],
    );
  }
}
