import 'package:flutter/material.dart';

void main() => runApp(const Sinavlarim());

class Sinavlarim extends StatelessWidget {
  const Sinavlarim({Key? key}) : super(key: key);

  static const String _title = 'Sınavlarım';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 13, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '1. Sayfa: Sınavlar Sınav Ekle Alanından, Girilecek Listeye Atılacak',
      style: optionStyle,
    ),
    Text(
      '2. Sayfa: Sınav saatinden 1 saat önce bildirim gönderecek',
      style: optionStyle,
    ),
    Text(
      '3. Sayfa: Yeni Sınav Eklenecek ve Sınav Listesine(1.sayfa) Atanacak',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.window),
              label: 'Sınav Listem',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alarm),
              label: 'Sınav Saati Bildirimi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Sınav Ekle',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
