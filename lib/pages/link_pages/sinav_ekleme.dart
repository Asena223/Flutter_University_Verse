import 'package:bitirme_deneme_5/pages/link_pages/sinavlarim.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Sinavlarim extends StatefulWidget {
  const Sinavlarim({Key? key}) : super(key: key);

  @override
  _SinavlarimState createState() => _SinavlarimState();
}

class _SinavlarimState extends State<Sinavlarim> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();

  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();

  TextEditingController t7 = TextEditingController();
  TextEditingController t8 = TextEditingController();

  TextEditingController t9 = TextEditingController();
  TextEditingController t10 = TextEditingController();

  TextEditingController t11 = TextEditingController();
  TextEditingController t12 = TextEditingController();

  TextEditingController t13 = TextEditingController();
  TextEditingController t14 = TextEditingController();

  TextEditingController t15 = TextEditingController();
  TextEditingController t16 = TextEditingController();

  TextEditingController t17 = TextEditingController();
  TextEditingController t18 = TextEditingController();

  TextEditingController t19 = TextEditingController();
  TextEditingController t20 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";

  sinavEkle() {
    FirebaseFirestore.instance
        .collection("Sinavlarim")
        .doc(t1.text)
        .set({'sinavAdi': t1.text, 'sinavSaati': t2.text}).whenComplete(
            () => print("Sınav Eklendi"));
  }

  sinavGuncelle() {
    FirebaseFirestore.instance
        .collection('Sinavlarim')
        .doc(t1.text)
        .update({'sinavAdi': t1.text, 'sinavSaati': t2.text}).whenComplete(
            () => print("Sınav güncellendi"));
  }

  sinavGetir() {
    FirebaseFirestore.instance
        .collection("Sinavlarim")
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi = gelenVeri.data()!['sinavAdi'];
        gelenYaziIcerigi = gelenVeri.data()!['sinavSaati'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sınav Ekleme'),
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    cursorColor: Colors
                        .black, //hepsine eklenecek imleç rengini vermektedir
                    controller: t1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '1. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t3,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '2. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t4,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '3. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t6,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t7,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '4. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t8,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t9,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '5. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t11,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '6. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t12,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t13,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: '7.Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t14,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t15,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '8. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t16,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t17,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '9. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t18,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: TextField(
                    controller: t19,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '10. Sınav Adı'),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: t20,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Gün-Saat'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: RaisedButton(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sınav Ekle",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color.fromARGB(175, 1, 1, 130),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: sinavEkle),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 170,
                  child: RaisedButton(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sınav Güncelle",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color.fromARGB(175, 1, 1, 130),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: sinavGuncelle),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  child: RaisedButton(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sınavlarım",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color.fromARGB(175, 1, 1, 130),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () => Navigator.pushReplacement(
                            //Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SinavlarimListePage()),
                          )),
                ),
              ],
            ),
            ListTile(
              title: Text(gelenYaziBasligi),
              subtitle: Text(gelenYaziIcerigi),
            ),
          ],
        ),
      ),
    ));
  }
}
