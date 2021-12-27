// import 'package:flutter/material.dart';
//
// void main() => runApp(const Derslerim());
//
// class Derslerim extends StatelessWidget {
//   const Derslerim({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 13, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       '1. Sayfa: Dersler Ders Ekle Alanından Girilecek, Listeye Atılacak',
//       style: optionStyle,
//     ),
//     Text(
//       '2. Sayfa: Ders saatinden 1 saat önce bildirim gönderecek',
//       style: optionStyle,
//     ),
//     Text(
//       '3. Sayfa: Yeni Ders Eklenecek ve Ders Listesine(1.sayfa) Atanacak',
//       style: optionStyle,
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(175, 1, 1, 120),
//           title: const Text(
//             'Dersler',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.window),
//               label: 'Ders Listem',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.add_alarm),
//               label: 'Ders Saati Bildirimi',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.add),
//               label: 'Ders Ekle',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.amber[800],
//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }
