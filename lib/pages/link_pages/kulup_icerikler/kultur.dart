import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const KulturKulubu());
}

class KulturKulubu extends StatelessWidget {
  const KulturKulubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
        title: Text('Kültür Kulüpleri'),
      ),
      // Remove the debug banner
      body: KulturKulubuPage(),
    );
  }
}

class KulturKulubuPage extends StatefulWidget {
  const KulturKulubuPage({Key? key}) : super(key: key);

  @override
  _KulturKulubuPageState createState() => _KulturKulubuPageState();
}

class _KulturKulubuPageState extends State<KulturKulubuPage> {
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
              label: 'İLİM VE KÜLTÜR',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.health_and_safety),
              label: 'SANAT VE KÜLTÜR',
              backgroundColor: Colors.amberAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.sports_basketball),
              label: 'TİYATRO',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
            SpeedDialChild(
              child: const Icon(Icons.sports_basketball),
              label: 'MEDYA VE İLETİŞİM ',
              backgroundColor: Colors.amberAccent,
              onTap: () {},
            ),
          ]),
    );
  }
}
