import 'package:flutter/material.dart';

import '../../../oneri_listesi.dart';

void main() => runApp(MetMalzemehocalar());

class MetMalzemehocalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('Metalurji ve Malzeme Müh. Akademisyenler'),
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
                      'Bölüm Başkanı Prof.Dr.' + '\n' + 'Mehtap MURATOĞLU',
                      style: TextStyle(color: Colors.white, fontSize: 9),
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
                      'Öğretim Üyesi Prof.Dr.' + '\n' + 'Mehmet EROĞLU',
                      style: TextStyle(color: Colors.white, fontSize: 10),
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
                          'Dr.Öğr.Üyesi Akın ODABAŞI',
                      style: TextStyle(color: Colors.white, fontSize: 10),
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
                      'Öğretim Üyesi Dr.Öğr.Üyesi' +
                          '\n' +
                          'MUSTAFA KAPTANOĞLU',
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
                      'Öğretim Görevlisi Öğr.Gör.Dr.' + '\n' + 'Selçuk KARATAŞ',
                      style: TextStyle(color: Colors.white, fontSize: 10),
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
                      'Araştırma Görevlisi Dr.Arş.Gör.' +
                          '\n' +
                          'Muhammet Gökhan ALBAYRAK',
                      style: TextStyle(color: Colors.white, fontSize: 9),
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
                      'Araştırma Görevlisi Arş.Gör.' + '\n' + 'Yusuf DONAT',
                      style: TextStyle(color: Colors.white, fontSize: 10),
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
                      'Araştırma Görevlisi Arş.Gör.' + '\n' + 'Emrah ÇELİK',
                      style: TextStyle(color: Colors.white, fontSize: 10),
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
