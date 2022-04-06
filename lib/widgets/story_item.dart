import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String imageUrls;
  StoryItem(this.imageUrl, this.imageUrls);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          padding: EdgeInsets.only(left: 12, top: 8, bottom: 8, right: 5),
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              imageUrl,
                              height: 156,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 120,
                        right: 55,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            imageUrls,
                          ),
                        ),
                        //     CircleAvatar(
                        //   radius: 18,
                        //   child: ClipOval(
                        //     child: Image.asset(
                        //       imageUrl,
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
