import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SinavlarimListePage extends StatelessWidget {
  const SinavlarimListePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sınavlar'),
        backgroundColor: Color(0xff082567),
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('Sinavlarim').snapshots(),
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
                        title: Text(doc['sinavAdi']),
                        subtitle: Text(doc['sinavSaati']),
                      ))
                  .toList(),
            );
          }),
    );
  }
}
