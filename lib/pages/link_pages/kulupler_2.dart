import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kulup_icerikler/spor.dart';

class Kulupler extends StatefulWidget {
  @override
  _KuluplerState createState() => _KuluplerState();
}

class _KuluplerState extends State<Kulupler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Kulüpleri'),
      ),
      body: Row(children: [
        FloatingActionButton(
          child: Icon(
            Icons.thumb_down,
          ),
          elevation: 10,
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SporKulubu()));
          },
          mini: false,
        ),
        SizedBox(
          height: 100,
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.thumb_down),
          elevation: 10,
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SporKulubu()));
          },
          mini: false,
        ),
      ]),
    );
  }
}
