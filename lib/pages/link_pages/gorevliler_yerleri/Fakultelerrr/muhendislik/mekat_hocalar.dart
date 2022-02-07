import 'package:flutter/material.dart';

import '../../../oneri_listesi.dart';

void main() => runApp(Mekthocalar());

class Mekthocalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('Mekatronik Müh. Akademisyenler'),
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
                      'Bölüm Başkanı Prof.Dr.' + '\n' + 'Oğuz YAKUT',
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
                SizedBox(width: 10,),
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
                      'Prof.Dr. Ayşegül UÇAR',
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
                      'Dr.Öğr.Üyesi Mehmet POLAT',
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
                      'Dr.Öğr.Üyesi Hakan ÇELİK',
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
                      'Dr.Öğr.Üyesi Beyda TAŞAR',
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
                      'Bölüm Başkanı Yardımcısı' +
                          '\n' +
                          'Dr.Öğr.Üyesi' +
                          '\n' +
                          'Alper K. TANYILDIZI',
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
                      'Bölüm Başkanı Yardımcısı' +
                          '\n' +
                          'Dr.Öğr.Üyesi' +
                          '\n' +
                          'Muhammet AYDIN',
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
                      'Web Sorumlusu Arş.Gör.' + '\n' + 'Çağrı KAYMAK',
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
                      'Arş.Gör. Tevfik YİĞİT',
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
                      'Arş.Gör. İrem MERTYÜZ',
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
