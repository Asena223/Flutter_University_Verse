import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart'; //tarih ekleyebilmek için kullandığım kütüphanedir

//import 'package:scheduled_';

class Yemekhane extends StatefulWidget {
  @override
  _YemekhanePageState createState() => _YemekhanePageState();
}

class _YemekhanePageState extends State<Yemekhane> {
  int _selectedPage = 0;

  void pageChanged(index) {
    setState(() {
      _selectedPage = index;
    });
  }

  final controller = PageController(
    initialPage: 0,
  );

  //bana yeni sayufa açsa uygulama sayfası
  //proje için mi yoksa
  //getVeriyi çağırıp logda yazdırsana logda nasıl yazdırcam  getveriyi çalıştırsana bi
  //kjnasmjkasdjajndksadnaks ndasj daksndja :( arkadaşta ya tel birsürü mesaj gelmiş nereui yapmam lazım askdkjasdn

  void _onTabTapped(int page) {
    setState(() {
      _selectedPage = page;
      controller.jumpToPage(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.fastfood_rounded),
                  title: const Text('Günün Menüsü'),
                  subtitle: Text(
                    DateFormat.yMMMMd().format(DateTime.now()),
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                //Padding(
                //padding: const EdgeInsets.all(16.0),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "MENÜ",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text('Yemek 1'),
                          Text('Yemek 2'),
                          Text('Yemek 3'),
                        ],
                      ),
                      //yavaş bı tık akjsdnnkad  adamlar uzaya çıkıyor bu hake açılmadı aksdajskdsdoasdoand
                    ],
                  ),
                ),

                // ),
                //ButtonBar(
                //alignment: MainAxisAlignment.start,
                //  children: [
                //okulun web sitesinden çekilecek.

                // FlatButton(
                //   textColor: const Color(0xFF6200EE),
                //   onPressed: () {
                //     // Perform some action
                //   },
                //   child: const Text('Yemek 1'),
                // ),
                // FlatButton(
                //   textColor: const Color(0xFF6200EE),
                //   onPressed: () {
                //     // Perform some action
                //   },
                //   child: const Text('Yemek 2'),
                // ),
              ],
            ),
            // Image.asset(
            //   'images/back2.jpg',
            //   //fit: BoxFit.contain,
            //   width: 100,
            // ),
            // SizedBox(height: 10),
            // Image.asset(
            //   'images/back2.jpg',
            //   //fit: BoxFit.contain,
            //   width: 100,
            // ),
            //],
          ),
        ),
      ),
    );
    // body: PageView(
    //   controller: controller,
    //   onPageChanged: (idx) => pageChanged(idx),
    // ),
    // bottomNavigationBar: ClipRRect(
    //   borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(10), topRight: Radius.circular(10)),
    //   child: BottomNavigationBar(
    //     backgroundColor: Color(0xff0785CC),
    //     items: <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.archive_rounded,
    //           size: 20.0,
    //         ),
    //         label: 'Derslerim',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.alarm,
    //           size: 20.0,
    //         ),
    //         label: 'Alarm Ekle',
    //       ),
    //     ],
    //     currentIndex: _selectedPage,
    //     selectedItemColor: Color(0xffFCD344),
    //     unselectedItemColor: Colors.yellow[50],
    //     onTap: (page) => _onTabTapped(page),
    //   ),
    // ),
  }
}
