import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'kulup_icerikler/spor.dart';

void main() {
  runApp(const Kulupler());
}

class Kulupler extends StatelessWidget {
  const Kulupler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
        title: Text('Öğrenci Kulüpleri'),
      ),
      // Remove the debug banner
      body: KuluplerPage(),
    );
  }
}

class KuluplerPage extends StatefulWidget {
  const KuluplerPage({Key? key}) : super(key: key);

  @override
  _KuluplerPageState createState() => _KuluplerPageState();
}

class _KuluplerPageState extends State<KuluplerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(),
      floatingActionButton: SpeedDial(
          icon: CupertinoIcons.suit_club,
          backgroundColor: Colors.amber,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.science),
              label: 'Bilim Öğrenci Kulüpleri',
              backgroundColor: Colors.amberAccent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SporKulubu()));
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.health_and_safety),
              label: 'Sağlık Öğrenci Kulüpleri',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.sports_basketball),
              label: 'Spor Öğrenci Kulüpleri',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.arrow_circle_down),
              label: 'Kültür Öğrenci Kulüpleri',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
          ]),
    );
  }
}
