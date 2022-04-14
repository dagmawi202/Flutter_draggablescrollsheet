import 'package:flutter/material.dart';
import 'package:test/comment_sheet.dart';
import 'package:test/testt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modal Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled:
                        true, //specifies whether this is a route for a bottom sheet that will utilize DraggableScrollableSheet.
                    useRootNavigator:
                        true, // This is useful in the case that a modal BottomSheet needs to be displayed above all other content but the caller is inside another Navigator.
                    enableDrag:
                        true, // parameter specifies whether the bottom sheet can be dragged up and down and dismissed by swiping downwards.
                    isDismissible:
                        false, // specifies whether the bottom sheet will be dismissed when user taps on the scrim.
                    barrierColor: Colors.transparent,
                    builder: (_) => CommentSheet());
              },
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.pink,
              child: Text(
                'Open Only ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),

            // Text(
            //   "_________",
            //   style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       letterSpacing: 0.4,
            //       fontWeight: FontWeight.w600),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // RaisedButton(
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
            //   onPressed: () {
            //     showModalBottomSheet(
            //         context: context,
            //         isScrollControlled:
            //             true, //specifies whether this is a route for a bottom sheet that will utilize DraggableScrollableSheet.
            //         useRootNavigator:
            //             true, // This is useful in the case that a modal BottomSheet needs to be displayed above all other content but the caller is inside another Navigator.
            //         enableDrag:
            //             true, // parameter specifies whether the bottom sheet can be dragged up and down and dismissed by swiping downwards.
            //         isDismissible:
            //             true, // specifies whether the bottom sheet will be dismissed when user taps on the scrim.
            //         barrierColor: Colors.transparent,
            //         builder: (context) {
            //           return Column(
            //             mainAxisSize: MainAxisSize.max,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: <Widget>[
            //               ListTile(
            //                 leading: new Icon(Icons.photo),
            //                 title: new Text('Photo'),
            //                 onTap: () {
            //                   Navigator.pop(context);
            //                 },
            //               ),
            //               ListTile(
            //                 leading: new Icon(Icons.music_note),
            //                 title: new Text('Music'),
            //                 onTap: () {
            //                   Navigator.pop(context);
            //                 },
            //               ),
            //               ListTile(
            //                 leading: new Icon(Icons.videocam),
            //                 title: new Text('Video'),
            //                 onTap: () {
            //                   Navigator.pop(context);
            //                 },
            //               ),
            //               ListTile(
            //                 leading: new Icon(Icons.share),
            //                 title: new Text('Share'),
            //                 onTap: () {
            //                   Navigator.pop(context);
            //                 },
            //               ),
            //             ],
            //           );
            //         });
            //   },
            //   padding:
            //       EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            //   color: Colors.pink,
            //   child: Text(
            //     'Only showModalBottomSheet',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.w600,
            //         letterSpacing: 0.6),
            //   ),
            // ),
            // Text(
            //   "_________",
            //   style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       letterSpacing: 0.4,
            //       fontWeight: FontWeight.w600),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // RaisedButton(
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
            //   onPressed: () {
            //     showModalBottomSheet(
            //         backgroundColor: Colors.yellow,
            //         context: context,
            //         isScrollControlled: true,
            //         isDismissible: true,
            //         builder: (BuildContext context) {
            //           return DraggableScrollableSheet(
            //               initialChildSize: 0.40, //set this as you want
            //               maxChildSize: 0.75, //set this as you want
            //               minChildSize: 0.38, //set this as you want
            //               expand: true,
            //               builder: (context, scrollController) {
            //                 return Container(
            //                   child: Text("Content"),
            //                 ); //whatever you're returning, does not have to be a Container
            //               });
            //         });
            //   },
            //   padding:
            //       EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            //   color: Colors.pink,
            //   child: Text(
            //     'Only DraggableScrollableSheet',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.w600,
            //         letterSpacing: 0.6),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
