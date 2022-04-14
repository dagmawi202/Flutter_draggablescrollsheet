import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

  @override
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MODAL BOTTOM SHEET EXAMPLE",
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
                    builder: (context) {
                      return DraggableScrollableSheet(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                    });
              },
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.pink,
              child: Text(
                'Click Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
