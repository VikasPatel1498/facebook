import 'dart:convert';
import 'dart:typed_data';

// import 'package:file_picker/file_picker.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
import 'dart:io';

import 'chewies_list_item.dart';
// import 'package:flutter_share/flutter_share.dart';

class PostItem extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String notification;
  final String profilepic;
  PostItem(this.title, this.imgUrl, this.notification, this.profilepic);

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  // int index = 0;
  // void shareImage() async {
  //   final response = await http.get();
  //   final bytes = response.bodyBytes;
  //   final Directory temp = await getTemporaryDirectory();
  //   final File imageFile = File('${temp.path}/tempImage');
  //   imageFile.writeAsBytesSync(response.bodyBytes);
  //   Share.shareFiles(
  //     ['${temp.path}/tempImage'],
  //     text: 'text to share',
  //   );
  // }

  // Future<String?> getFilePath() async {
  //   try {
  //     String filePath = await FilePicker.getFilePath(type: FileType.ANY);
  //     if (filePath == '') {
  //       return "";
  //     }
  //     print("File path: " + filePath);
  //     return filePath;
  //   } on PlatformException catch (e) {
  //     print("Error while picking the file: " + e.toString());
  //     return null;
  //   }
  // }

  // final controller = TextEditingController();

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  // Future<Null> saveAndShare() async {
  //   setState(() {
  //     var isBtn2 = true;
  //   });
  //   final RenderObject? box = context.findRenderObject();
  //   if (Platform.isAndroid) {
  //     var url = Uri.parse(
  //         // 'https://www.winklix.com/blog/wp-content/uploads/2020/01/6t1pv3xcd.png'
  //        );
  //     var response = await http.post(
  //       url,
  //       body: json.encode({
  //         // other data
  //         'image': .image.toString(),
  //       }),
  //     );
  //     final documentDirectory = (await getExternalStorageDirectory())!.path;
  //     File imgFile = File('$documentDirectory/flutter.png');
  //     imgFile.writeAsBytesSync(response.bodyBytes);

  //     Share.shareFiles(
  //       File(["$documentDirectory/flutter.png"]),
  //       subject: 'URL conversion + Share',
  //       text: 'Hey! Checkout the Share Files repo',
  //       // sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
  //     );
  //   } else {
  //     Share.share(
  //       'Hey! Checkout the Share Files repo',
  //       subject: 'URL conversion + Share',
  //       // sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
  //     );
  //   }
  //   setState(() {
  //     var isBtn2 = false;
  //   });
  // }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<void> _onShare(BuildContext context) async {
    final RenderObject? box = context.findRenderObject();
    final path = await _localPath;

    final ByteData bytes = await rootBundle.load('${widget.profilepic}');
    final Uint8List list = bytes.buffer.asUint8List();
    final directory = (await getExternalStorageDirectory())!.path;
    File imgFile = widget.profilepic.endsWith(".mp4")
        ? File('$directory/video.mp4')
        : File('$directory/image.png');
    imgFile.writeAsBytesSync(list);

    widget.imgUrl.endsWith(".mp4")
        ? Share.shareFiles(['$directory/video.mp4'],
            text: widget.notification +
                "\n \nClick to go more videos https://www.google.com/search?q=videos&rlz=1C5CHFA_enIN974IN974&oq=videos&aqs=chrome..69i57j0i433i512l4j46i433i512j0i512j69i60.2098j0j7&sourceid=chrome&ie=UTF-8")
        : Share.shareFiles(['$directory/image.png'],
            text: widget.notification +
                "\n \nClick to go more images https://www.google.com/search?q=image&rlz=1C5CHFA_enIN974IN974&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjf-KukwsL0AhX5TmwGHcpyDwoQ_AUoAXoECAEQAw&biw=1200&bih=692&dpr=1"
            // sharePositionOrigin: box!.localToGlobal(Offset.zero)
            );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: 7,
              color: Colors.grey[300],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(widget.imgUrl),
                    ),
                    title: Text(
                      widget.title,
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
                    top: 7, left: 10, bottom: 7, right: 2),
                child: Text(
                  // 'To control the text that is displayed in the text field, use the controller.Its different from onSubmitted because it has a default value which ',
                  widget.notification,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        // ChewieListItem(
        //   videoPlayerController: VideoPlayerController.network(
        //       "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
        //   looping: true,
        // ),
        Container(
          height: 320,
          width: double.infinity,
          child: widget.profilepic.endsWith(".mp4")
              ? ChewieListItem(
                  videoPlayerController:
                      VideoPlayerController.asset(widget.profilepic),
                  looping: true,
                )
              : Image.asset(
                  widget.profilepic,
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
                //PERTICULAR IMAGE SHARE
                onPressed: () => _onShare(context),

                // single file share
                // onPressed: () async {
                //   FilePickerResult result =
                //       await FilePicker.platform.pickFiles();
                //   if (result != null) {
                //     print(result.files.single.path);
                //     Share.shareFiles(["${result.files.single.path}"],
                //         text: "Images");
                //   }

                // multiple file save and sare
                // onPressed: () => saveAndShare(),

                // open camera and shareimage
                // onPressed: () async {
                //   final image =
                //       await ImagePicker.pickImage(source: ImageSource.camera);
                //   if (image == null) return;
                //   await Share.shareFiles([image.path], text: "texts");
                // },

                //file type : image ,galary share
                // onPressed: () async {
                //   final result =
                //       await FilePicker.platform.pickFiles(type: FileType.image);

                //   final files = result.files.map((file) => file.path).toList();
                //   if (files == null) return;
                //   await Share.shareFiles(files, text: "text");
                // },

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
        )
      ],
    );
  }

  // Future<List<String>> pickFile() async {
  //   final result = await FilePicker.platform.pickFiles(allowMultiple: true);

  //   return result == null ? <String>[] : result.paths;
  // }
}
