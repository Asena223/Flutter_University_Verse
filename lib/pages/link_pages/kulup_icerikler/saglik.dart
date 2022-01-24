import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const SaglikKulubu());
}

class SaglikKulubu extends StatelessWidget {
  const SaglikKulubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
        title: Text('Sağlık Kulüpleri'),
      ),
      // Remove the debug banner
      body: SaglikKulubuPage(),
    );
  }
}

class SaglikKulubuPage extends StatefulWidget {
  const SaglikKulubuPage({Key? key}) : super(key: key);

  @override
  _SaglikKulubuPageState createState() => _SaglikKulubuPageState();
}

class _SaglikKulubuPageState extends State<SaglikKulubuPage> {
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
              label: 'DİŞ HEKİMLİĞİ BİLİMSEL ARAŞTIRMA ',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.health_and_safety),
              label: 'SAĞLIK BİLİMLERİ ',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.sports_basketball),
              label: 'VETERİNER SAĞLIK ',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
          ]),
    );
  }
}
