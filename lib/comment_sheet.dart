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
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        snap: true,
        expand:
            false, //This field specifies whether the widget should expand to fill the available space in its parent or not. The default value is true. We have not specified because we want it to be true.
        initialChildSize:
            0.7, //This field specifies the initial size of the bottom draggable sheet you want to appear on the fraction of the screen and takes a double value. Its default value is 0.5. Its value range from 0 – 1.0.
        minChildSize:
            0.5, //This field specifies the minimum size of the DraggableScrollableSheet widget that is when any user will scroll down to close the widget, the minimum height will appear. Its default value is 0.25 and ranges from 0 – 1.0.
        maxChildSize:
            .9, // This field specifies the maximum size of the DraggableScrollableSheet widget that is when any user will scroll up to open the widget, the maximum height will appear. Its default value is 1.0 and ranges from 0 – 1.0. It also specifies the fraction of the screen to be occupied.
        builder: (_, scrollController) {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: new Icon(Icons.person),
                        title: new Text('Comment 1'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.person),
                        title: new Text('Comment 2'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.person),
                        title: new Text('Comment 3'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: new Icon(Icons.person),
                        title: new Text('Comment 4'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ]),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.send,
                        keyboardAppearance: Brightness.light,
                        onSubmitted: (_) {},
                        onChanged: (_) {
                          setState(() {});
                        },
                        textCapitalization: TextCapitalization.sentences,
                        expands: false,
                        minLines: 1,
                        maxLines: 1,
                        autofocus: true,
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.white24,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Add Comment ",
                          contentPadding: EdgeInsets.only(
                            top: 12,
                            left: 16,
                            right: 16,
                            bottom: 12,
                          ),
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(Icons.send),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ]));
        });
  }
}
