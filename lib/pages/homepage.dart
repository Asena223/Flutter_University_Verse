import 'package:bitirme_deneme_5/pages/link_pages/ders_ekleme.dart';
import 'package:bitirme_deneme_5/pages/link_pages/devamsizlikTutma.dart';
import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/fakulteler.dart';
import 'package:bitirme_deneme_5/pages/link_pages/ogrenci_onerileri_giris.dart';
import 'package:bitirme_deneme_5/pages/link_pages/oneri_listesi.dart';
import 'package:bitirme_deneme_5/pages/link_pages/sinav_ekleme.dart';
import 'package:bitirme_deneme_5/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'link_pages/kayipEsyaEkle.dart';
import 'link_pages/kayipEsyaListe.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff082567),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff082567)),
              accountName: Text("University Verse"),
              accountEmail: Text("universe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/back17.png"),
              ),
            ),
            ListTile(
              title: Text(
                'Ders Ekle',
                style: TextStyle(fontFamily: 'Merriweather'),
              ),
              leading: Icon(Icons.window),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Derslerim()));
              },
            ),
            ListTile(
              title: Text('Devams??zl??klar??m'),
              leading: Icon(Icons.remove),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DevamsizlikEkleme()));
              },
            ),
            // ListTile(
            //   title: Text('Derslerim'),
            //   leading: Icon(Icons.auto_stories),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Derslerim()));
            //   },
            // ),
            ListTile(
              title: Text('S??navlar??m'),
              leading: Icon(Icons.border_color_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sinavlarim()));
              },
            ),
            ListTile(
              title: Text('Kay??p E??ya'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KayipEsyaEkle()));
              },
              leading: Icon(Icons.remove_shopping_cart),
            ),
            ListTile(
              title: Text('Kay??p E??ya Listesi'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KayipEsyaListePage()));
              },
              leading: Icon(Icons.view_list_rounded),
            ),
            ListTile(
              title: Text('????retim G??revlileri Yerleri'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Fakulteler()));
              },
              leading: Icon(CupertinoIcons.person_crop_circle_badge_exclam),
            ),
            // ListTile(
            //   title: Text('??ikayet - ??neri Giri??'),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Oneriler()));
            //   },
            //   leading: Icon(Icons.contact_mail_sharp),
            // ),
            // ListTile(
            //   title: Text('??ikayet - ??neri Listesi'),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => OneriListePage()));
            //   },
            //   leading: Icon(Icons.contact_mail_sharp),
            // ),
            Divider(),
            ListTile(
              title: Text('????k???? yap'),
              onTap: () {
                _authService.signOut();
                Navigator.pop(context);
              },
              leading: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
      body: Container(
        child: ImageSlideshow(
          /// geni??li??i
          width: double.infinity,

          /// y??ksekli??i
          height: 200,

          ///ilk g??sterilecek sayfa
          initialPage: 0,

          /// renk
          indicatorColor: Colors.blue,

          /// arka ren??i
          indicatorBackgroundColor: Colors.grey,

          children: [
            Image.asset(
              'images/firat_3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_2.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_1.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_4.jpg',
              fit: BoxFit.cover,
            ),
          ],

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
        ),
      ),
      floatingActionButton: SpeedDial(
          icon: Icons.message,
          backgroundColor: Colors.orangeAccent,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.line_style),
              label: '??neri Giri??',
              backgroundColor: Colors.amberAccent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Oneriler()));
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.list),
              label: '??neri Listele',
              backgroundColor: Colors.amberAccent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OneriListePage()));
              },
            ),
          ]),
    );
  }
}
