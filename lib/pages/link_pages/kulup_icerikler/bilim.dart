import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const BilimKulubu());
}

class BilimKulubu extends StatelessWidget {
  const BilimKulubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
        title: Text('Bilim Kulüpleri'),
      ),
      // Remove the debug banner
      body: BilimKulubuPage(),
    );
  }
}

class BilimKulubuPage extends StatefulWidget {
  const BilimKulubuPage({Key? key}) : super(key: key);

  @override
  _BilimKulubuPageState createState() => _BilimKulubuPageState();
}

class _BilimKulubuPageState extends State<BilimKulubuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: SpeedDial(
          icon: Icons.sports_basketball,
          backgroundColor: Colors.amber,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.science),
              label: 'ACM Fırat',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.health_and_safety),
              label: 'ADLİ BİLİŞİM',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.sports_basketball),
              label: 'ERASMUS',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.arrow_circle_down),
              label: 'FIRAT IEEE',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.arrow_circle_down),
              label: 'SİBER GÜVENLİK ',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.arrow_circle_down),
              label: 'TEKNOLOJİ AR-GE ve GİRİŞİMCİLİK',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
          ]),
    );
  }
}
