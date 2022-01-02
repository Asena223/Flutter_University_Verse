import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SporKulubu extends StatelessWidget {
  const SporKulubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spor Kulüpleri'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Text('DENEME'),
        ));
  }
}
