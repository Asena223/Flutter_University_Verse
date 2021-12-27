import 'package:bitirme_deneme_5/pages/link_pages/oneri_listesi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Oneriler extends StatelessWidget {
  const Oneriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle =
        'Öneri ve Şikayetleriniz'; //değişken oluşturdum ve başlığı içine attım ki her yerde kullanabileyim.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(175, 1, 1, 120),
          title: const Text(appTitle),
        ),
        body: const OneriForm(),
      ),
    );
  }
}

class OneriForm extends StatefulWidget {
  const OneriForm({Key? key}) : super(key: key);

  @override
  _OneriFormState createState() => _OneriFormState();
}

class _OneriFormState extends State<OneriForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Ad Soyad'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fakülteniz',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bölümünüz',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Şikayet - Öneri Konusu',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Şikayetlerinizi - Önerilerinizi Giriniz')),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Liste()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      //color: colorPrimaryShade,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                    child: Text(
                      "GÖNDER",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Georgia',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
