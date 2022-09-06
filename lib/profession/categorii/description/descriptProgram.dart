// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'dart:core';
// import 'package:http/http.dart' as http;
//
// import '../../../language/JsonTake.dart';
//
//
// class Cardt extends StatefulWidget {
//   int a;
//   Cardt({required this.a});
//
//   @override
//   State<Cardt> createState() => _CardtState();
// }
//
// class _CardtState extends State<Cardt> {
//   Welcome? welcome;
//   Future<Welcome>? jsonmag;
//
//   Future<Welcome> fetchAlbum() async {
//     var giveJson = await DefaultAssetBundle.of(context)
//         .loadString("asset/json/maglumat.json");
//     var decodedJson = json.decode(giveJson);
//     welcome = Welcome.fromJson(decodedJson);
//
//     return welcome!;
//   }
//
//   Future<Welcome>? veri;
//   String errorCheck = '';
//
//   List media = [
//     "СПЕЦИАЛИСТ ПО КОНТЕКСТНОЙ РЕКЛАМЕ",
//     "СММ",
//     "КОПИРАЙТЕР",
//     "EVENT-МЕНЕДЖЕР"
//   ];
//   List finance = [
//     "БИЗНЕС-АНАЛИТИК",
//     "КРЕДИТНЫЙ МЕНЕДЖЕР",
//     "БРОКЕР",
//     "БУХГАЛТЕР"
//   ];
//   List trading = [
//     "МЕРЧЕНДАЙЗЕР",
//     "ПРОМОУТЕР",
//     "ЭКСПЕДИТОР",
//     "ЭКСПЕДИТОР",
//     "ПРОДУКТОВЫЙ АНАЛИТИК"
//   ];
//   List medical = ["БИОТЕХНОЛОГ", "СТОМАТОЛОГ", "ЭНДОКРИНОЛОГ", "ХИРУРГ"];
//   List programming = [
//     "PROJECT MANAGER",
//     "ГЕЙМ-ДИЗАЙНЕР",
//     "ВЕРСТАЛЬЩИК",
//     "АДМ"
//         "ИНИСТРАТОР САЙТА"
//   ];
//
//   var san;
//
//   void initState() {
//     super.initState();
//
//     setState(() {
//       veri = fetchAlbum();
//     });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         //TODO :data gelse
//         //TODO : Error
//         //TODO :loading
//         body: FutureBuilder(
//             future: fetchAlbum(),
//             builder: (context, AsyncSnapshot<Welcome> snapshot) {
//               debugPrint(snapshot.data.toString());
//               if (snapshot.hasData) {
//                 return Container(
//                     padding: EdgeInsets.all(20),
//                     height: MediaQuery.of(context).size.height - 100,
//                     child: CustomScrollView(slivers: [
//                       SliverPadding(
//                           padding: const EdgeInsets.all(5),
//                           sliver: SliverList(delegate:
//                               SliverChildBuilderDelegate(
//                                   (BuildContext context, index) {
//                             return Container(
//                               child: Column(children: [
//                                 Text(
//                                   snapshot.data!.media.[0].profName,
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w900),
//                                 ),
//                                 Container(
//                                     width: 350,
//                                     height: 250,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             width: 1, color: Colors.teal),
//                                         borderRadius: BorderRadius.only(
//                                             bottomRight: Radius.circular(30),
//                                             topRight: Radius.circular(30))),
//                                     child: Image.asset(
//                                       "asset/wybor.png",
//                                       width: 350,
//                                       height: 250,
//                                     )),
//                                 Text(
//                                   snapshot.data!.media[index].description,
//                                   style: TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w900),
//                                 ),
//
//                                 Text(
//                                   snapshot.data!.media[index].requiredSkills,
//                                   style: TextStyle(color: Colors.black54),
//                                 ),
//                                 // Text(
//                                 //   snapshot.data!.media[0].requiredSkills,
//                                 //   style: TextStyle(color: Colors.black54),
//                                 // ),
//                                 Container(
//                                     width: 350,
//                                     height: 250,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             width: 1, color: Colors.teal),
//                                         borderRadius: BorderRadius.only(
//                                             bottomRight: Radius.circular(30),
//                                             topRight: Radius.circular(30))),
//                                     child: Image.asset(
//                                       "asset/wybor2.jpg",
//                                       width: 350,
//                                       height: 250,
//                                     )),
//                                 Text(
//                                   snapshot.data!.media[0].highQualification,
//                                   style: TextStyle(color: Colors.black54),
//                                 ),
//                               ]),
//                             );
//
//                           },
//                                 childCount: 1,
//                               )))
//                     ]));
//               } else if (snapshot.hasError) {
//                 return Text(snapshot.data.toString());
//               } else {
//                 return CircularProgressIndicator();
//               }
//             }));
//   }
// }
//
