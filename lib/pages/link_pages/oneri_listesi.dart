import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Liste());

class Liste extends StatelessWidget {
  const Liste({Key? key}) : super(key: key);

  static const String _title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController o1 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";

  yaziGetir() {
    FirebaseFirestore.instance
        .collection("Oneriler")
        .doc(o1.text)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi = gelenVeri.data()!['konu'];
        gelenYaziIcerigi = gelenVeri.data()!['oneri'];
      });
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo,
      //   title: Text('Devamsızlık Ekleme'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                RaisedButton(child: Text("Onerilerim"), onPressed: yaziGetir),
                SizedBox(height: 10),
                // SizedBox(
                //   width: 167,
                //   child: RaisedButton(
                //       child: Text("Devamsızlık Güncelle"),
                //       onPressed: yaziGuncelle),
                // ),
                // RaisedButton(
                //     child: Text("Devamsızlığım"), onPressed: yaziGetir),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
