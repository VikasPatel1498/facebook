import 'package:flutter/material.dart';

class ProfileRequest extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProfileRequest(
    this.title,
    this.imageUrl,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.only(left: 12, top: 8, bottom: 8, right: 5),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.grey[200],
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imageUrl,
                            height: 200,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(title),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue.shade800),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person_add_alt_1,
                                      size: 12,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Text(
                                        "ADD FRIEND",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              OutlineButton(
                                borderSide: BorderSide(
                                  // width: 0.9,
                                  color: Colors.black,
                                  // style: BorderStyle.solid,
                                ),
                                onPressed: () {},
                                child: Text(
                                  "REMOVE",
                                  style: TextStyle(fontSize: 11),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
