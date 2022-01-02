import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new UniGez());
}

class UniGez extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('UrlLauchner'),
        ),
        body: new Center(
          child: new InkWell(
              child: new Text('Open Browser'),
              onTap: () => launch(
                  'https://translate.google.com/?sl=tr&tl=en&text=flutter%20da%20butona%20link%20verme&op=translate')),
        ),
      ),
    );
  }
}
