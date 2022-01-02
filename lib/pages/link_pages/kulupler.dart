// import 'package:flutter/material.dart';
//
// class Kulupler extends StatefulWidget {
//   @override
//   _KuluplerState createState() => _KuluplerState();
// }
//
// class _KuluplerState extends State<Kulupler> {
//   //declaration & initialize variable provinces & cities
//   List<DropdownModel> dropdownDatas = [
//     DropdownModel("BİLİM ÖĞRENCİ TOPLULUKLARI", [
//       "ACM  Fırat (Association For Computing Machinery)  ÖĞRENCİ TOPLULUĞU",
//       "ADLİ BİLİŞİM ÖĞRENCİ  TOPLULUĞU",
//       "AKILLI SİSTEMLER VE MİLLİ SAVUNMA TEKNOLOJİLERİ ÖĞRENCİ TOPLULUĞU",
//       "BİOMÜHENDİSLİK ÖĞRENCİ TOPLULUĞU",
//       "BÖTE   ÖĞRENCİ TOPLULUĞU",
//       "COGRAFYA ÖĞRENCİ TOPLULUĞU",
//       "ERASMUS ÖĞRENCİ  TOPLULUĞU",
//       "ENDÜSTRİYEL TASARIM ÖĞRENCİ  TOPLULUĞU",
//       "FIRAT ESKİZ ÖĞRENCİ TOPLULUĞU",
//       "FAMÜK ÖĞRENCİ  TOPLULUĞU",
//       "FIRAT  ÜNİVERSİTESI TEKNOLOJİ(FÜTEK) ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ELEKTRONİK VE BİLİŞİM TEKNOLOJİLERİ ÖĞRENCİ TOPLULUĞU",
//       "FIRAT BİLİM AKADEMİSİ ÖĞRENCİ  TOPLULUĞU",
//       "FIRAT IEEE ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ  ENERJİ ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ  FOTOGRAMETRİ  ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ INTERNATİONAL VETERİNARY STUDENTS ASSOCİATİON ( FÜİVSA)",
//       "FİMÜ   ÖĞRENCİ TOPLULUĞU",
//       "FÜ   PROJE ARAŞTIRMA VE GELİŞTİRME ÖĞRENCİ TOPLULUĞU",
//       "HAVACILIK VE UZAY TEKNOLOJİLERİ ÖĞRENCİ TOPLULUĞU",
//       "GÖKBİLİMİ VE UYDU TEKNOLOJİLERİ ÖĞRENCİ TOPLULUĞU",
//       "İŞLETME VE İNOVASYON ÖĞRENCİ TOPLULUĞU",
//       "İNSANSIZ ARAÇLAR ÖĞRENCİ TOPLULUĞU",
//       "MAKİNE ÖĞRENCİ TOPLULUĞU",
//       "MALZEME  BİLİMLERİ ÖĞRENCİ TOPLULUĞU",
//       "MATEMATİK ÖĞRENCİ TOPLULUĞU",
//       "MEKATRONİK ÖĞRENCİ TOPLULUĞU",
//       "SAHA VETERİNER HEKİMLİĞİ ÖĞRENCİ TOPLULUĞU",
//       "ÜNİVERSİTE-SANAYİ İŞBİRLİĞİ ÖĞRENCİ TOPLULUĞU (ÜSAK)",
//       "SİBER GÜVENLİK ÖĞRENCİ TOPLULUĞU",
//       "TEKNOLOJİ AR-GE ve GİRİŞİMCİLİK  ÖĞRENCİ TOPLULUĞU",
//       "VETERİNER BİLİMSEL ARAŞTIRMA VE YAYIN ÖĞRENCİ TOPLULUĞU",
//       "YAPAY ZEKA, GÖRÜNTÜ İŞLEME VE İNOVASYON ÖĞRENCİ TOPLULUĞU"
//     ]),
//     DropdownModel("KÜLTÜR ÖĞRENCİ TOPLULUKLARI", [
//       "AKADEMİK DÜŞÜNCE EĞİTİM MEDENİYET ÖĞRENCİ TOPLULUĞU",
//       "FIRAT GELENEKSEL TÜRK SAVAŞ SANATLARI",
//       "FIRAT OSMANLI GENÇLİK ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ  İLİM VE KÜLTÜR ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ SANAT VE KÜLTÜR  ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ DANS ÖĞRENCİ TOPLULUĞU",
//       "FİKİR VE MEDENİYET ÖĞRENCİ TOPLULUĞU",
//       "FOTOĞRAFÇILIK ÖĞRENCİ TOPLULUĞU",
//       "GRİ ÇİZGİ SANAT VE FİKİR AKADEMİSİ ÖĞRENCİ TOPLULUĞU",
//       "GÜZEL SANATLAR  ÖĞRENCİ TOPLULUĞU",
//       "İNGİLİZ DİLİ VE EDEBİYATI ARAŞTIRMALARI  ÖĞRENCİ TOPLULUĞU",
//       "KİTAP SEVERLER KULÜBÜ ÖĞRENCİ TOPLULUĞU",
//       "MAVERA ÖĞRENCİ TOPLULUĞU",
//       "MEDYA VE İLETİŞİM ÖĞRENCİ TOPLULUĞU",
//       "MÜZİK ÖĞRENCİ TOPLULUĞU",
//       "SİNEMA ÖĞRENCİ TOPLULUĞU",
//       "TİYATRO ÖĞRENCİ TOPLULUĞU",
//       "TÜRK DÜNYASI İLETİŞİM  ÖĞRENCİ TOPLULUĞU",
//       "ZÜMRA ÖĞRENCİ TOPLULUĞU",
//       "YABANCI DİL ÖĞRENCİ TOPLULUĞU"
//     ]),
//     DropdownModel("SAĞLIK ÖĞRENCİ TOPLULUKLARI", [
//       "FIRAT ÜNİVERSİTESİ DİŞ HEKİMLİĞİ BİLİMSEL ARAŞTIRMA ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ GENÇ YERYÜZÜ DOKTORLARI ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ SİNİR VE BİLİM ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ TIP BİLİMSEL ARAŞTIRMA ÖĞRENCİ TOPLULUĞU",
//       "İBNİ SİNA SAĞLIK HİZMETLERİ ÖĞRENCİ TOPLULUĞU",
//       "EUROPEAN MEDİCAL STUDENS ASSOCİATİ.ON(EMSA-FIRAT) ÖĞRENCİ TOPLULUĞU",
//       "SAĞLIK BİLİMLERİ ÖĞRENCİ TOPLULUĞU",
//       "SAĞLIKLI YAŞAM VE GENÇ DİYETİSYENLER  ÖĞRENCİ TOPLULUĞU",
//       "SAĞLIKTA POZİTİF DÜŞÜNCE ÖĞRENCİ TOPLULUĞU",
//       "TURKMSIC FIRAT TIP ÖĞRENCİ TOPLULUĞU",
//       "VETERİNER SAĞLIK ÖĞRENCİ TOPLULUĞU"
//     ]),
//     DropdownModel("SOSYAL ÖĞRENCİ TOPLULUKLARI", [
//       "ATATÜRKÇÜ DÜŞÜNÇE ÖĞRENCİ TOPLULUĞU",
//       "DAMLA ÖĞRENCİ TOPLULUĞU",
//       "DÜŞÜNCE AKADEMİSİ  ÖĞRENCİ TOPLULUĞU",
//       "EDEBİYAT  ÖĞRENCİ TOPLULUĞU",
//       "EĞİTİM GÖNÜLLÜLERİ ÖĞRENCİ TOPLULUĞU",
//       "ENGELSİZ FIRAT  ÖĞRENCİ TOPLULUĞU",
//       "FARKINDALIK ATÖLYESİ ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ AFRİKALI ÖĞRENCİ TOPLULUĞU",
//       "FIRAT KIZILAY ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ AKİL GENÇLER ÖĞRENCİ TOPLULUĞU",
//       "FIRAT ÜNİVERSİTESİ GEZİ VE TURZİM  ÖĞRENCİ TOPLULUĞU",
//       "GENÇ DÜŞÜNCE ÖĞRENCİ  TOPLULUĞU",
//       "GENÇ GİRİŞİMCİLER ÖĞRENCİ TOPLULUĞU",
//       "GENÇ TEMA ÖĞRENCİ TOPLULUĞU",
//       "HAYVANLARI KORUMA ÖĞRENCİ TOPLULUĞU",
//       "HALKA İLİŞKİLER VE İLETİŞİM ÖĞRENCİ TOPLULUĞU",
//       "İLMİ ARAŞTIRMALAR ÖĞRENCİ TOPLULUĞU",
//       "İKTİSAT ÖĞRENCİ TOPLULUĞU",
//       "KADEM GENÇLİK ÖĞRENCİ TOPLULUĞU",
//       "KAMPÜSTE UMUTLU YARINLARA ÖĞRENCİ TOPLULUĞU(KUYÖT)",
//       "KAMU GÖZETİMİ VE OMBUDSMANLIK ÖĞRENCİ TOPLULUĞU",
//       "KAŞGARLI MAHMUT ÖĞRENCİ TOPLULUĞU",
//       "PSİKOLOJİK DANIŞMANLIK VE REHBERLİK TOPLULUĞU",
//       "REHBER  ÖĞRENCİ TOPLULUĞU",
//       "OKUL ÖNCESİ ÖGRETMENLİĞİ ÖĞRENCİ TOPLULUĞU",
//       "SOSYAL HİZMET ETKİLEŞİM ÖĞRENCİ TOPLULUĞU",
//       "TASAVVUF ÖĞRENCİ TOPLULUĞU",
//       "TARİH ÖĞRENCİ TOPLULUĞU",
//       "TÜRKÇE DÜŞÜNÇE ÖĞRENCİ TOPLULUĞU",
//       "TOPLUM GÖNÜLLÜLER ÖĞRENCİ TOPLULUĞU",
//       "ULUSLARARASI ÖĞRENCİ TOPLULUĞU",
//       "YENİLER ÖĞRENCİ TOPLULUĞU",
//       "YEŞİLAY ÖĞRENCİ TOPLULUĞU"
//     ]),
//     DropdownModel("SPOR KOLLARI", [
//       "HAVACILIK KULÜBÜ",
//       "ELAZIĞSPOR TARAFTARLAR TOPLULUĞU KULÜBÜ",
//       "TENİS KULÜBÜ",
//       "TRABZONSPORLULAR KULÜBÜ",
//       "SU ÜSTÜ ve SU ALTI SPORLARI KULÜBÜ",
//       "ATLETİZM",
//       "BADMİNTON",
//       "BASKETBOL",
//       "BİNİCİLİK",
//       "BOKS",
//       "BUZ PATENİ",
//       "BURSASPORLULULAR(UNİTİMSAH)",
//       "DAĞCILIK VE MAĞARACILIK",
//       "FUTBOL",
//       "FÜDAK(FIRAT ÜNV. DOĞA AFET ARAMA KURTARMA)",
//       "GÜREŞ",
//       "BİLEK GÜREŞİ",
//       "GENÇLİK VE SPOR KULÜBÜ",
//       "HENTBOL",
//       "İZCİ KULÜBÜ",
//       "KAYAK",
//       "OKÇULUK KULÜBÜ",
//       "VOLEYBOL",
//       "MASA TENİSİ",
//       "TEAKWENDO-KARETE",
//       "BİSİKLET KULÜBÜ",
//       "ÜNV. ULTRA ASLAN"
//     ])
//   ];
//
//   //declaration variable to store result of province & cities
//   DropdownModel? valueDropdownData;
//
//   //declaration variable to store result of city
//   String? valueCity;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Öğrenci Kulüpleri'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(28.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Text(
//                 "Alanlar",
//                 style: TextStyle(
//                     fontFamily: 'Georgia', color: Colors.black45, fontSize: 18),
//               ),
//
//               //the 1st Dropdown
//               DropdownButton<DropdownModel>(
//                 value: valueDropdownData,
//                 icon: Icon(Icons.arrow_drop_down),
//                 isExpanded: true,
//                 onChanged: (DropdownModel? newValue) {
//                   setState(() {
//                     valueDropdownData = newValue;
//                     valueCity = null;
//                   });
//                 },
//                 items: dropdownDatas.map<DropdownMenuItem<DropdownModel>>(
//                     (DropdownModel value) {
//                   return DropdownMenuItem<DropdownModel>(
//                     value: value,
//                     child: Text(value.provinces),
//                   );
//                 }).toList(),
//               ),
//
//               SizedBox(height: 50),
//
//               Text(
//                 "Alanlara Bağlı Olarak Kulüpleri Seçiniz",
//                 style: TextStyle(
//                     fontFamily: 'Georgia', fontSize: 18, color: Colors.black45),
//               ),
//
//               //the 2nd Dropdown
//               if (valueDropdownData !=
//                   null) //error handling when 1st Dropdown not selected yet
//                 DropdownButton<String>(
//                   value: valueCity,
//                   icon: Icon(Icons.arrow_drop_down),
//                   isExpanded: true,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       valueCity = newValue;
//                     });
//                   },
//                   items: valueDropdownData!.cities
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //make model class
// class DropdownModel {
//   final String provinces; //this variable for the 1st Dropdown
//   final List<String> cities; //this variable for the 2nd Dropdown
//
//   DropdownModel(this.provinces, this.cities);
// }
