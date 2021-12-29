import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Oneriler extends StatelessWidget {
  const Oneriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const appTitle =
    //     'Öneri ve Şikayetleriniz'; //değişken oluşturdum ve başlığı içine attım ki her yerde kullanabileyim.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(175, 1, 1, 120),
            title: Text('Öneri-Şikayet Giriş')),
        body: OneriForm(),
      ),
    );
  }
}

class OneriForm extends StatefulWidget {
  @override
  _OneriFormState createState() => _OneriFormState();
}

class _OneriFormState extends State<OneriForm> {
  TextEditingController s1 = TextEditingController();
  TextEditingController s2 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";

  yaziEkle() {
    FirebaseFirestore.instance
        .collection("Oneriler")
        .doc(s1.text)
        .set({'konu': s1.text, 'oneri': s2.text}).whenComplete(
            () => print("Oneri Eklendi"));
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
                TextField(
                  controller: s1,
                  decoration: InputDecoration(
                      labelText: 'Öneri Konusu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 20),
                TextField(
                  minLines: 2,
                  maxLines: 5,
                  controller: s2,
                  decoration: InputDecoration(
                      labelText: 'Öneri Açıklaması',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 150,
                        child: RaisedButton(
                            child: Text("Öneri Ekle"), onPressed: yaziEkle)),

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
