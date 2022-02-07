import 'package:flutter/material.dart';

import '../../../oneri_listesi.dart';

void main() => runApp(Biyohocalar());

class Biyohocalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff082567),
          title: Text('Biyomühendislik Akademisyenler'),
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
                      'Bölüm Başkanı Prof.Dr.' + '\n' + 'M. Şaban TANYILDIZI',
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
                      'Prof.Dr.' + '\n' + 'H.Soner ALTUNDOĞAN',
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
                      'Prof.Dr. İnanç ÖZGEN',
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
                      'Doç.Dr. Mehmet KALENDER',
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
                      'Dr.Öğr.Üyesi Erdal ÖBEK',
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
                      'Dr.Öğr.Üyesi Venhar ÇELİK',
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
                      'Bölüm Başkan Yardımcısı' +
                          '\n' +
                          'Dr.Öğr.Üyesi' +
                          '\n' +
                          'Veyis SELEN',
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
                      'Dr.Öğr.Üyesi' + '\n' + 'Aykut TOPDEMİR',
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
