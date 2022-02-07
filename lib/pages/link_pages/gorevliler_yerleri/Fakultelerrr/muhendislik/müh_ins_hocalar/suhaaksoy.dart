import 'package:flutter/material.dart';

void main() => runApp(const SuhaAksoy());

class SuhaAksoy extends StatelessWidget {
  const SuhaAksoy({Key? key}) : super(key: key);

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
              title: Text('Doç.Dr. H. Suha AKSOY'),
              subtitle: Text('E-Posta saksoy@firat.edu.tr' +
                  '\n' +
                  '\n' +
                  'Telefon (0424) 2370000-5409' +
                  '\n' +
                  '\n'
                      'Kişisel Site https://abs.firat.edu.tr/saksoy'),
            ),
          ],
        ),
      ),
    );
  }
}
