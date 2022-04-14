import 'package:flutter/material.dart';

class MainDev extends StatefulWidget {
  const MainDev({Key? key}) : super(key: key);

  @override
  _MainDevState createState() => _MainDevState();
}

class _MainDevState extends State<MainDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Scaffold(
        body: Container(
          child: ElevatedButton(
            onPressed: () => _showSheet(),
            child: Text("Open"),
          ),
        ),
      ),
    );
  }

  void _showSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,

      backgroundColor: Colors.transparent, // set this to true
      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.64,
          minChildSize: 0.2,
          maxChildSize: .9,
          builder: (_, controller) {
            return Container(
              color: Colors.blue[500],
              child: ListView.builder(
                controller: controller, // set this too
                itemBuilder: (_, i) => ListTile(title: Text('Item $i')),
              ),
            );
          },
        );
      },
    );
  }
}
