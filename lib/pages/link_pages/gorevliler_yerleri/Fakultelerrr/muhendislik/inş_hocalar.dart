import 'package:bitirme_deneme_5/pages/link_pages/gorevliler_yerleri/Fakultelerrr/muhendislik/m%C3%BCh_ins_hocalar/ahmet_simsek.dart';
import 'package:flutter/material.dart';

import 'müh_ins_hocalar/mesut_gor.dart';
import 'müh_ins_hocalar/suhaaksoy.dart';

void main() => runApp(Inshocalar());

class Inshocalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('İnşaat Müh. Akademisyenler'),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 200,
              child: RaisedButton.icon(
                padding: EdgeInsets.all(17),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AhmetSimsek()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                label: Text(
                  'Arş.Gör.' + '\n' + 'Ahmet Tuğşat ŞİMŞEK',
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
            Container(
              width: 200,
              child: RaisedButton.icon(
                padding: EdgeInsets.all(17),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuhaAksoy()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                label: Text(
                  'Doç.Dr. H. Suha AKSOY',
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
            Container(
              width: 200,
              child: RaisedButton.icon(
                padding: EdgeInsets.all(17),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MesutGor()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                label: Text(
                  'Dr.Öğr.Üyesi Mesut GÖR',
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
            SizedBox(
              width: 10,
            ),
          ],
        )));
  }
}
