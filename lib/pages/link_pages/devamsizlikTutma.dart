import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Devamsizlik_Duzenleme extends StatelessWidget {
  const Devamsizlik_Duzenleme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DevamsizlikEkleme extends StatefulWidget {
  const DevamsizlikEkleme({Key? key}) : super(key: key);
  @override
  _DevamsizlikEklemeState createState() => _DevamsizlikEklemeState();
}

class _DevamsizlikEklemeState extends State<DevamsizlikEkleme> {
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
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                            width: 250,
                            child: FlatButton(
                                autofocus: true,
                                //color: Colors.blue,
                                child: Text(
                                  "Devamsızlık Ekle",
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: yaziEkle)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: SizedBox(
                          width: 250,
                          child: FlatButton(
                              child: Text(
                                "Devamsızlık Güncelle",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: yaziGuncelle),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: SizedBox(
                          width: 250,
                          child: FlatButton(
                              child: Text(
                                "Devamsızlığım",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: yaziGetir),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 50, 12, 100),
                  child: ListTile(
                    title: Text(
                      gelenYaziBasligi,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Georgia'),
                    ),
                    subtitle: Text(gelenYaziIcerigi + " devamsızlık yaptın"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
