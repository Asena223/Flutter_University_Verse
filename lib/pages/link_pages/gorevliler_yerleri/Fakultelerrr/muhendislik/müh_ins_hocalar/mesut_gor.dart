import 'package:flutter/material.dart';

void main() => runApp(const MesutGor());

class MesutGor extends StatelessWidget {
  const MesutGor({Key? key}) : super(key: key);

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
              title: Text('Dr.Öğr.Üyesi Mesut GÖR'),
              subtitle: Text('E-Posta mgor@firat.edu.tr' +
                  '\n' +
                  '\n'
                      'Telefon (0424) 2370000-5406' +
                  '\n' +
                  '\n' +
                  'Uzmanlık Alanları Geoteknik, Zemin İyileştirme Yöntemleri, Zemin Mekaniği, Temel İnşaatı, Kazıklı Radye Temeller, Beton, Betonun Kırılma Mekaniği'),
            ),
          ],
        ),
      ),
    );
  }
}
