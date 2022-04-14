import 'package:flutter/material.dart';

class CommentSheet extends StatefulWidget {
  const CommentSheet({Key? key}) : super(key: key);

  @override
  _CommentSheetState createState() => _CommentSheetState();
}

class _CommentSheetState extends State<CommentSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        snap: true,
        expand:
            false, //This field specifies whether the widget should expand to fill the available space in its parent or not. The default value is true. We have not specified because we want it to be true.
        initialChildSize:
            0.6, //This field specifies the initial size of the bottom draggable sheet you want to appear on the fraction of the screen and takes a double value. Its default value is 0.5. Its value range from 0 – 1.0.
        minChildSize:
            0.5, //This field specifies the minimum size of the DraggableScrollableSheet widget that is when any user will scroll down to close the widget, the minimum height will appear. Its default value is 0.25 and ranges from 0 – 1.0.
        maxChildSize:
            0.9, // This field specifies the maximum size of the DraggableScrollableSheet widget that is when any user will scroll up to open the widget, the maximum height will appear. Its default value is 1.0 and ranges from 0 – 1.0. It also specifies the fraction of the screen to be occupied.
        builder: (_, scrollController) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: new Icon(Icons.photo),
                        title: new Text('Photo'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.music_note),
                        title: new Text('Music'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.videocam),
                        title: new Text('Video'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.share),
                        title: new Text('Share'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ])
              ]));
        });
  }
}
