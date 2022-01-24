import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'kulup_icerikler/bilim.dart';
import 'kulup_icerikler/kultur.dart';
import 'kulup_icerikler/saglik.dart';

void main() {
  runApp(const Kulupler());
}

class Kulupler extends StatelessWidget {
  const Kulupler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 1, 1, 120),
        title: Text('Öğrenci Kulüpleri'),
      ),
      // Remove the debug banner
      body: KuluplerPage(),
    );
  }
}

class KuluplerPage extends StatefulWidget {
  const KuluplerPage({Key? key}) : super(key: key);

  @override
  _KuluplerPageState createState() => _KuluplerPageState();
}

class _KuluplerPageState extends State<KuluplerPage> {
  late PageController _pageController;
  List<String> images = [
    "images/back10.jpg",
    "images/back5.jpg",
    "images/back4.jpg"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ImageSlideshow(
          /// genişliği
          width: double.infinity,

          /// yüksekliği
          height: 200,

          ///ilk gösterilecek sayfa
          initialPage: 0,

          /// renk
          indicatorColor: Colors.blue,

          /// arka renği
          indicatorBackgroundColor: Colors.grey,

          children: [
            Image.asset(
              'images/firat_3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_2.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_1.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/firat_4.jpg',
              fit: BoxFit.cover,
            ),
          ],

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: CupertinoIcons.suit_club,
        backgroundColor: Colors.amber,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.science),
            label: 'Bilim Öğrenci Kulüpleri',
            backgroundColor: Colors.amberAccent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BilimKulubu()));
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.health_and_safety),
            label: 'Sağlık Öğrenci Kulüpleri',
            backgroundColor: Colors.amberAccent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SaglikKulubu()));
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.arrow_circle_down),
            label: 'Kültür Öğrenci Kulüpleri',
            backgroundColor: Colors.amberAccent,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KulturKulubu()));
            },
          ),
        ],
      ),
    );
  }
}
