import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math' as matematik;
import 'package:flutter/painting.dart';
import 'description/descriptFinance.dart';


class CategFinance extends StatefulWidget {

  int a;
  CategFinance({required this.a});

  @override
  State<CategFinance> createState() => _CategFinanceState();
}

class _CategFinanceState extends State<CategFinance> {


  List finance = [
    "БИЗНЕС-АНАЛИТИК",
    "КРЕДИТНЫЙ МЕНЕДЖЕР",
    "БРОКЕР",
    "БУХГАЛТЕР"
  ];
  List trading = [
    "МЕРЧЕНДАЙЗЕР",
    "ПРОМОУТЕР",
    "ЭКСПЕДИТОР",
    "ЭКСПЕДИТОР",
    "ПРОДУКТОВЫЙ АНАЛИТИК"
  ];
  List medical = ["БИОТЕХНОЛОГ", "СТОМАТОЛОГ", "ЭНДОКРИНОЛОГ", "ХИРУРГ"];
  List programming = [
    "PROJECT MANAGER",
    "ГЕЙМ-ДИЗАЙНЕР",
    "ВЕРСТАЛЬЩИК",
    "АДМ"
        "ИНИСТРАТОР САЙТА"
  ];

  var san;
  @override
  void initState() {
    // TODO: implement initState
    san = widget.a == 0
        ? finance
        : san = widget.a == 1
        ? finance
        : san = widget.a == 2
        ? trading
        : san = widget.a == 3 ? medical : programming;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 150,
        floating: false,
        pinned: true,
        snap: false,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("Изучи проффесию и сделай осознаный выбор.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none)),
          centerTitle: true,
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(10),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
              return GestureDetector(
                child: Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: colors_random(),
                      border: Border.all(width: 1, color: Colors.teal),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Center(
                    child: Text('${san[index]}',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.teal.shade900,
                            fontSize: 20)),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>



                           Cardt(a: index,
                          )));
                },
              );
            },
            childCount: san.length,
          ),
        ),
      ),
    ]);
  }
}


Color colors_random() {
  return Color.fromARGB(
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255),
      matematik.Random().nextInt(255));
}
