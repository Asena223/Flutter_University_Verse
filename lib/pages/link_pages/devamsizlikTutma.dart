import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Devamsizlik_Duzenleme extends StatelessWidget {
  const Devamsizlik_Duzenleme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DersEkleme extends StatefulWidget {
  const DersEkleme({Key? key}) : super(key: key);
  @override
  _DersEklemeState createState() => _DersEklemeState();
}

class _DersEklemeState extends State<DersEkleme> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";

  yaziEkle() {
    FirebaseFirestore.instance
        .collection("Devamsizliklar")
        .doc(t1.text)
        .set({'baslik': t1.text, 'devamsizlik': t2.text}).whenComplete(
            () => print("Devamsızlık Eklendi"));
  }

  yaziGuncelle() {
    FirebaseFirestore.instance
        .collection('Devamsizliklar')
        .doc(t1.text)
        .update({'baslik': t1.text, 'devamsizlik': t2.text}).whenComplete(
            () => print("Devamsızlık güncellendi"));
  }

  yaziGetir() {
    FirebaseFirestore.instance
        .collection("Devamsizliklar")
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi = gelenVeri.data()!['baslik'];
        gelenYaziIcerigi = gelenVeri.data()!['devamsizlik'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Devamsızlık Ekleme'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: t1,
                  decoration: InputDecoration(
                      labelText: 'Ders Adı',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: t2,
                  decoration: InputDecoration(
                      labelText: 'Devamsızlık Durumu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 150,
                        child: RaisedButton(
                            child: Text("Devamsızlık Ekle"),
                            onPressed: yaziEkle)),
                    SizedBox(
                      width: 167,
                      child: RaisedButton(
                          child: Text("Devamsızlık Güncelle"),
                          onPressed: yaziGuncelle),
                    ),
                    RaisedButton(
                        child: Text("Devamsızlığım"), onPressed: yaziGetir),
                  ],
                ),
                ListTile(
                  title: Text(
                    gelenYaziBasligi,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'Georgia'),
                  ),
                  subtitle: Text(gelenYaziIcerigi),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}