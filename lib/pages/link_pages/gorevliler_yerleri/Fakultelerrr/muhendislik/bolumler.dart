import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/Fakultelerrr/muhendislik/elek_hocalar.dart';
import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/Fakultelerrr/muhendislik/makine_hocalar.dart';
import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/Fakultelerrr/muhendislik/met_mal_hocalar.dart';
import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/Fakultelerrr/muhendislik/yazilim_hocalar.dart';
import 'package:flutter/material.dart';

import 'bilgisayar_hocalar.dart';
import 'biyomuhendis_hocalar.dart';
import 'inş_hocalar.dart';
import 'mekat_hocalar.dart';

void main() => runApp(MuhBolumler());

class MuhBolumler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('Fakülteler'),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Inshocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'İnşaat Müh..',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Elekthocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Elektrik Elektronik Müh.',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(16),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bilgisayarhocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Bilgisayar Müh.',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Makinehocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Makine Müh.',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mekthocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Mekatronik Müh.',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MetMalzemehocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Metalurji ve Malzeme Müh.',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Yazilimhocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Yazılım Müh.',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Biyohocalar()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Biyomühendislik',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
