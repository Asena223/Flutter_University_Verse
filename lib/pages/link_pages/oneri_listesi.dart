import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OneriListePage extends StatelessWidget {
  const OneriListePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öneriler-Şikayetler'),
        backgroundColor: Colors.red,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Oneriler').snapshots(),
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
                        title: Text(doc['konu']),
                        subtitle: Text(doc['oneri']),
                      ))
                  .toList(),
            );
          }),
    );
  }
}
