import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kayipEsyaListe.dart';

class KayipEsyaEkle extends StatelessWidget {
  const KayipEsyaEkle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const appTitle =
    //     'Öneri ve Şikayetleriniz'; //değişken oluşturdum ve başlığı içine attım ki her yerde kullanabileyim.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff082567),
        title: Text('Kayıp Eşya Giriş'),
      ),
      body: KayipEsyaEkleForm(),
    );
  }
}

class KayipEsyaEkleForm extends StatefulWidget {
  @override
  _KayipEsyaEkleFormState createState() => _KayipEsyaEkleFormState();
}

class _KayipEsyaEkleFormState extends State<KayipEsyaEkleForm> {
  TextEditingController s1 = TextEditingController();
  TextEditingController s2 = TextEditingController();
  TextEditingController s3 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";

  yaziEkle() {
    FirebaseFirestore.instance.collection("KayipEsya").doc(s1.text).set({
      'esyaAdi': s1.text,
      'bulunanYer': s2.text,
      'teslimYer': s3.text
    }).whenComplete(() => print("Eşya Eklendi"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: s1,
                  decoration: InputDecoration(
                      labelText: 'Kayıp Eşya Adı',
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
                      labelText: 'Kayıp Eşya Bulunan Yer',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  minLines: 2,
                  maxLines: 5,
                  controller: s3,
                  decoration: InputDecoration(
                      labelText: 'Kayıp Eşya Teslim Edilen Yer',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blue,
                      ),
                      child: SizedBox(
                          width: 170,
                          child: FlatButton.icon(
                              onPressed: yaziEkle,
                              icon: Icon(Icons.add_circle_outline),
                              label: Text('Kayıp Eşya Ekle'))),
                    ),

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            right: 10,
            child: FloatingActionButton(
              heroTag: 'next',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KayipEsyaListePage()));
              },
              child: const Icon(
                Icons.arrow_right,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    );
  }
}
