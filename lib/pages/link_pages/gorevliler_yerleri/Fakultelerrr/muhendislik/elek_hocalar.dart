import 'package:flutter/material.dart';

import '../../../oneri_listesi.dart';

void main() => runApp(Elekthocalar());

class Elekthocalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('Elektrik Müh. Akademisyenler'),
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
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Prof.Dr. YAKUP DEMİR',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Arş.Gör. FATMA MURAT',
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
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Bölüm Başkanı Prof.Dr.' + '\n' + 'ARİF GÜLTEN',
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
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Doç.Dr. VEDAT ÇELİK',
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
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Bölüm Başkan Yardımcısı' +
                          '\n' +
                          'Dr.Öğr.Üyesi.' +
                          '\n' +
                          ' BARIŞ KARAKAYA',
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
                Container(
                  width: 200,
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(17),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OneriListePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    label: Text(
                      'Arş.Gör. ERMAN ÖZPOLAT',
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
          ],
        )));
  }
}
