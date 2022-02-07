import 'package:flutter/material.dart';

void main() => runApp(const AhmetSimsek());

class AhmetSimsek extends StatelessWidget {
  const AhmetSimsek({Key? key}) : super(key: key);

  static const String _title = 'İletişim Bilgileri';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff082567), title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Arş.Gör. Ahmet Tuğşat ŞİMŞEK'),
              subtitle: Text('E-Posta atsimsek@firat.edu.tr' +
                  '\n' +
                  '\n' +
                  'Telefon (0424) 2370000-'),
            ),
          ],
        ),
      ),
    );
  }
}
