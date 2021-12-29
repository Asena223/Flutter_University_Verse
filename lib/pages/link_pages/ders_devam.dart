import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Derslerim extends StatefulWidget {
  const Derslerim({Key? key}) : super(key: key);

  @override
  _DerslerimState createState() => _DerslerimState();
}

class _DerslerimState extends State<Derslerim> {
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

  dersEkle() {
    FirebaseFirestore.instance
        .collection("Derslerim")
        .doc(t1.text)
        .set({'baslik': t1.text, 'ders': t2.text}).whenComplete(
            () => print("Ders Eklendi"));
  }

  dersGuncelle() {
    FirebaseFirestore.instance
        .collection('Derslerim')
        .doc(t1.text)
        .update({'baslik': t1.text, 'ders': t2.text}).whenComplete(
            () => print("Ders güncellendi"));
  }

  dersGetir() {
    FirebaseFirestore.instance
        .collection("Derslerim")
        .doc(t1.text)
        .get()
        .then((gelenVeri) {
      setState(() {
        gelenYaziBasligi = gelenVeri.data()!['baslik'];
        gelenYaziIcerigi = gelenVeri.data()!['ders'];
      });
    });
  }
  //
  // int sayfaNo = 1;
  //
  // List<dynamic> faculties = [];
  // List<dynamic> sections = [];
  // List<dynamic> states = [];
  // List<dynamic> classes = [];
  // List<dynamic> lessons = [];
  //
  // String? facultiesId;
  // String? sectionId;
  // String? classesId;
  // String? lessonsId;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   this.faculties.add({'id': 1, 'label': 'Fen Fakültesi'});
  //   this.faculties.add({'id': 2, 'label': 'Eğitim Fakültesi'});
  //   this
  //       .faculties
  //       .add({'id': 3, 'label': 'İnsani Ve Sosyal Bilimler Fakültesi'});
  //   this
  //       .faculties
  //       .add({'id': 4, 'label': 'İktisadi Ve İdari Bilimler Fakültesi'});
  //   this.faculties.add({'id': 5, 'label': 'İlahiyat Fakültesi'});
  //   this.faculties.add({'id': 6, 'label': 'İletişim Fakültesi'});
  //   this.faculties.add({'id': 7, 'label': 'Mühendislik Fakültesi'});
  //   this.faculties.add({'id': 8, 'label': 'Su Ürünleri Fakültesi'});
  //   this.faculties.add({'id': 9, 'label': 'Teknik Bilimler Fakültesi'});
  //   this.faculties.add({'id': 10, 'label': 'Teknoloji Fakültesi'});
  //   this.faculties.add({'id': 11, 'label': 'Mimarlık Fakültesi'});
  //   this.faculties.add({'id': 12, 'label': 'Diş Hekimliği Fakültesi'});
  //   this.faculties.add({'id': 13, 'label': 'Tıp Fakültesi'});
  //   this.faculties.add({'id': 14, 'label': 'Sağlık Bilimleri Fakültesi'});
  //   this.faculties.add({'id': 15, 'label': 'Veterinerlik Fakültesi'});
  //   this.faculties.add({'id': 16, 'label': 'Spor Bilimleri Fakültesi'});
  //
  //   this.sections = [
  //     {'ID': 1, 'Name': 'Moleküler Biyoloji ve Genetik', 'ParentId': 1},
  //     {'ID': 2, 'Name': 'Biyoloji', 'ParentId': 1},
  //     {'ID': 3, 'Name': 'Kimya', 'ParentId': 1},
  //     {'ID': 1, 'Name': 'Rehberlik ve Psikolojil Danışmanlık', 'ParentId': 2},
  //     {'ID': 2, 'Name': 'Sosyal Bilimler Öğretmenliği', 'ParentId': 2},
  //     {'ID': 3, 'Name': 'Türkçe Öğretmenliği', 'ParentId': 2},
  //     {'ID': 1, 'Name': 'Çağdaş Türk Lehçeleri ve Edebiyatları', 'ParentId': 3},
  //     {'ID': 2, 'Name': 'Tarih', 'ParentId': 3},
  //     {'ID': 3, 'Name': 'Türk Dili ve Edebiyatı', 'ParentId': 3},
  //     {'ID': 4, 'Name': 'Coğrafya', 'ParentId': 3},
  //     {'ID': 5, 'Name': 'Alman Dili ve Edebiyatı', 'ParentId': 3},
  //     {'ID': 6, 'Name': 'Sosyoloji', 'ParentId': 3},
  //     {'ID': 7, 'Name': 'Tarih', 'ParentId': 3},
  //     {'ID': 8, 'Name': 'Türk Dili ve Edebiyatı', 'ParentId': 3},
  //     {'ID': 9, 'Name': 'İngiliz Dili ve Edebiyatı', 'ParentId': 4},
  //     {
  //       'ID': 1,
  //       'Name': 'Çalışma Ekonomisi ve Endüstri İlişkileri',
  //       'ParentId': 4
  //     },
  //     {'ID': 2, 'Name': 'Sosyal Hizmet', 'ParentId': 4},
  //     {'ID': 3, 'Name': 'İşletme', 'ParentId': 4},
  //     {'ID': 4, 'Name': 'Siyaset Bilimi ve Kamu Yönetimi', 'ParentId': 4},
  //     {'ID': 5, 'Name': 'İktisat', 'ParentId': 4},
  //     {'ID': 6, 'Name': 'Maliye', 'ParentId': 4},
  //     {'ID': 1, 'Name': 'İlahiyat', 'ParentId': 5},
  //     {'ID': 2, 'Name': 'Radyo Televizyon ve Sinema', 'ParentId': 6},
  //     {'ID': 3, 'Name': 'Halkla İlişkiler ve Tanıtım', 'ParentId': 6},
  //     {'ID': 4, 'Name': 'Gazetecilik', 'ParentId': 6},
  //     {'ID': 5, 'Name': 'Görsel İletişim Tasarımı', 'ParentId': 6},
  //     {'ID': 1, 'Name': 'Elektrik Elektronik Mühendisliği', 'ParentId': 7},
  //     {'ID': 2, 'Name': 'İnşaat Mühendisliği', 'ParentId': 7},
  //     {'ID': 3, 'Name': 'Makina Mühendisliği', 'ParentId': 7},
  //     {'ID': 4, 'Name': 'Mekatronik Mühendisliği', 'ParentId': 7},
  //     {'ID': 5, 'Name': 'Jeoloji Mühendisliği', 'ParentId': 7},
  //     {'ID': 6, 'Name': 'Biyomühendislik', 'ParentId': 7},
  //     {'ID': 1, 'Name': 'Su Ürünleri Mühendisliği', 'ParentId': 8},
  //     {'ID': 1, 'Name': 'Makine', 'ParentId': 9},
  //     {'ID': 2, 'Name': 'İç Mekan Tasarımı', 'ParentId': 9},
  //     {'ID': 3, 'Name': 'Otomotiv Teknolojisi', 'ParentId': 9},
  //     {'ID': 4, 'Name': 'iş Sağlığı ve Güvenliği', 'ParentId': 9},
  //     {'ID': 5, 'Name': 'Radyo ve Televizyon Programcılığı', 'ParentId': 9},
  //     {'ID': 6, 'Name': 'Elektronik Teknolojisi', 'ParentId': 9},
  //     {'ID': 7, 'Name': 'İnşaat Teknolojisi', 'ParentId': 9},
  //     {'ID': 1, 'Name': 'Yazılım Mühendisliği', 'ParentId': 10},
  //     {'ID': 2, 'Name': 'İnşaat Mühendisliği', 'ParentId': 10},
  //     {'ID': 3, 'Name': 'Adli Bilişim Mühendisliği', 'ParentId': 10},
  //     {'ID': 4, 'Name': 'Elektrik Elektronik Mühendisliği', 'ParentId': 10},
  //     {'ID': 1, 'Name': 'Mimarlık', 'ParentId': 11},
  //     {'ID': 1, 'Name': 'Diş Hekimliği', 'ParentId': 12},
  //     {'ID': 1, 'Name': 'Tıp', 'ParentId': 13},
  //     {'ID': 1, 'Name': 'Beslenme ve Diyetetik', 'ParentId': 14},
  //     {'ID': 1, 'Name': 'Veterinerlik', 'ParentId': 15},
  //     {'ID': 1, 'Name': 'Spor Yöneticiliği', 'ParentId': 16},
  //   ];
  //
  //   this.classes.add({'Id': 1, 'Label': 'Hazırlık Sınıfı', 'ParentId': 3});
  //   this.classes.add({'Id': 2, 'Label': '1. Sınıf', 'ParentId': 3});
  //   this.classes.add({'Id': 3, 'Label': '2. Sınıf', 'ParentId': 3});
  //   this.classes.add({'Id': 4, 'Label': '3. Sınıf', 'ParentId': 3});
  //   this.classes.add({'Id': 5, 'Label': '4. Sınıf', 'ParentId': 3});
  //
  //   this.lessons.add({'_Id': 1, '_Name': 'moleküler', 'ParentId': 1});
  //   this.lessons.add(
  //     {'_Id': 2, '_Name': 'biyoloji', 'ParentId': 1},
  //   );
  //   this.lessons.add(
  //     {'_Id': 3, '_Name': 've', 'ParentId': 1},
  //   );
  //   this.lessons.add(
  //     {'_Id': 4, '_Name': 'genetik', 'ParentId': 1},
  //   );
  //   this.lessons.add(
  //     {'_Id': 1, '_Name': 'rehberlik', 'ParentId': 2},
  //   );
  //   this.lessons.add(
  //     {'_Id': 2, '_Name': 'psikoloji', 'ParentId': 2},
  //   );
  //   this.lessons.add(
  //     {'_Id': 3, '_Name': 'sosyal', 'ParentId': 2},
  //   );
  //   this.lessons.add(
  //     {'_Id': 4, '_Name': 'türkçe', 'ParentId': 2},
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Ders Ekleme'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //FAKÜLTELER BURAYA GİRİLECEKTİR
            // FormHelper.dropDownWidgetWithLabel(
            //     context,
            //     'Fakülteler',
            //     'Fakülte Seçiniz',
            //     this.facultiesId,
            //     this.faculties, (onChangedVal) {
            //   this.facultiesId = onChangedVal;
            //   print("Fakülte Seçiniz:$onChangedVal");
            //
            //   this.states = this
            //       .sections
            //       .where(
            //         (stateItem) =>
            //             stateItem['ParentId'].toString() ==
            //             onChangedVal.toString(),
            //       )
            //       .toList();
            //   this.sectionId = null;
            // }, (onValidateVal) {
            //   if (onValidateVal == null) {
            //     return 'Please Select Country';
            //   }
            //   return null;
            // },
            //     borderColor: Theme.of(context).primaryColor,
            //     borderFocusColor: Theme.of(context).primaryColor,
            //     borderRadius: 10,
            //     optionValue: 'id',
            //     optionLabel: 'label'),
            //
            // //BÖLÜMLER BURAYA GİRİLECEKTİR
            // FormHelper.dropDownWidgetWithLabel(
            //     context, 'Bölümler', 'Bölüm Seç', this.sectionId, this.states,
            //     (onChangedVal) {
            //   this.sectionId = onChangedVal;
            //   print("Bölüm Seç:$onChangedVal");
            //   // this.states = this
            //   //     .lessons
            //   //     .where(
            //   //       (stateItem) =>
            //   //           stateItem['ParentId'].toString() ==
            //   //           onChangedVal.toString(),
            //   //     )
            //   //     .toList();
            //   // this.lessonsId = null;
            // }, (onValidateVal) {
            //   if (onValidateVal == null) {
            //     return 'Please Select Country';
            //   }
            //   return null;
            // },
            //     borderColor: Theme.of(context).primaryColor,
            //     borderFocusColor: Theme.of(context).primaryColor,
            //     borderRadius: 10,
            //     optionValue: 'ID',
            //     optionLabel: 'Name'),
            //
            // //SINIFLAR BURAYA GİRİLECEKTİR.
            // FormHelper.dropDownWidgetWithLabel(
            //     context, 'Sınıflar', 'Sınıf Seç', this.classesId, this.classes,
            //     (onChangedVal) {
            //   this.classesId = onChangedVal;
            //   print('Bölüm Seç:$onChangedVal');
            // }, (onValidateVal) {
            //   return null;
            // },
            //     borderColor: Theme.of(context).primaryColor,
            //     borderFocusColor: Theme.of(context).primaryColor,
            //     borderRadius: 10,
            //     optionValue: 'Id',
            //     optionLabel: 'Label'),

            // //DERSLER BURAYA EKLENECEK
            // FormHelper.dropDownWidgetWithLabel(
            //     context,
            //     'Dersler',
            //     'Dersleri Seçiniz',
            //     this.lessonsId,
            //     this.lessons, (onChangedVal) {
            //   this.lessonsId = onChangedVal;
            //   print("Dersleri Seçiniz:$onChangedVal");
            // }, (onValidateVal) {
            //   if (onValidateVal == null) {
            //     return 'Please Select Country';
            //   }
            //   return null;
            // },
            //     borderColor: Theme.of(context).primaryColor,
            //     borderFocusColor: Theme.of(context).primaryColor,
            //     borderRadius: 10,
            //     optionValue: '_Id',
            //     optionLabel: '_Name'),
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
                        border: OutlineInputBorder(), labelText: '1. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '2. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '3. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '4. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '5. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '6. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '7.Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '8. Ders Adı'),
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
                        border: OutlineInputBorder(), labelText: '9. Ders Adı'),
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
                        labelText: '10. Ders Adı'),
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
            Row(
              children: [
                SizedBox(
                    width: 100,
                    child: RaisedButton(
                        child: Text("Ders Ekle"), onPressed: dersEkle)),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 170,
                  child: RaisedButton(
                      child: Text("Ders Saatini Güncelle"),
                      onPressed: dersGuncelle),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                    width: 100,
                    child: RaisedButton(
                        child: Text("Derslerim"), onPressed: dersGetir)),
              ],
            ),
            ListTile(
              title: Text(gelenYaziBasligi),
              subtitle: Text(gelenYaziIcerigi),
            ),
            // RaisedButton(
            //   child: Text('Devamsızlık Ekle'),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => DevamsizlikEkleme()));
            //   },
            // ),
          ],
        ),
      ),
    ));
  }
}
