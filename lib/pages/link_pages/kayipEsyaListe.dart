import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class KayipEsyaListePage extends StatelessWidget {
  const KayipEsyaListePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıp Eşya Listesi'),
        backgroundColor: Color(0xff082567),
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('KayipEsya').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading');
            }
            return ListView(
              children: snapshot.data!.docs
                  .map((doc) => ListTile(
                        title: Text(doc['esyaAdi']),
                        subtitle: Text('Bulunan Yer: ' +
                            doc['bulunanYer'] +
                            '\n' +
                            'Eşyanın Teslim Edildiği Yer: ' +
                            doc['teslimYer']),
                        leading: Icon(Icons.arrow_forward_ios_rounded),
                      ))
                  .toList(),
            );
          }),
    );
  }
}
