import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import '../../../language/JsonTake.dart';

class Cardt extends StatefulWidget {
  int a;
  Cardt({required this.a});

  @override
  State<Cardt> createState() => _CardtState();
}

class _CardtState extends State<Cardt> {
  List kont_rek = [
    "СПЕЦИАЛИСТ ПО КОНТЕКСТНОЙ РЕКЛАМЕ",
    "Специалист по "
        "контекстной рекламе, или контекстолог, –  сотрудник, который "
        "занимается ведением и анализом контекстной рекламы. Он настраивает рекламу "
        "таким образом, чтобы она показывалась только тем людям, кто искал в интернете "
        "похожую информацию.",
    "* Ответсвенность\n* Аналитическое мышление\n*Внимательность\n*Системное "
        "мышление, спососбность к анализу",
  ];

  List smm = ["СММ", "Специалист по контекстной рекламе, или контекстолог, "
      "–  сотрудник, который занимается ведением и анализом контекстной рекламы. "
      "Он настраивает рекламу таким образом, чтобы она показывалась только тем людям, "
      "кто искал в интернете похожую информацию.", "Ответсвенность* Аналитическое мышление*Внимательность"
      "*Системное мышление, спососбность к анализу", "* Ответсвенность * "
  "Аналитическое мышление *Внимательность *Системное мышление, спососбность к"
      " анализу"];

  List kopirayete = [
    "КОПИРАЙТЕР",
    "Копирайтер – специалист, который занимается подготовкой рекламно-информационных материалов для сайтов,  посадочных страниц, печатной продукции. Специалист работает по контент-плану и создает информационные, рекламные статьи, посты для социальных сетей, занимается созданием текстов рекламных баннеров, e-mail-рассылок, текстов для мессенджеров, презентаций и так далее.",
    "* Умение правильно излагать мысли* Креативность *Внимательность *Знание грамматики",
  ];

  List event = ["EVENT-МЕНЕДЖЕР", "Это удивительно динамичная и разноплановая профессия. Ивент-менеджер – это кукловод мероприятия. "
      "В его сутках 25 часов, в голове полно сумасшедших идей, прямо сейчас он может заниматься поиском вокального коллектива, "
      "который станет главным развлечением вечера, а уже через пять минут собирает данные автомобильных номеров, чтобы организовать "
      "удобную парковку гостям мероприятия. Это профессия для гиперактивных людей с очень развитым воображением.", "* Ответсвенность* "
      "Аналитическое мышление *Внимательность *Системное мышление, спососбностьк анализу"];
  List fotograf = [
    "ОПЕРАТОР-ФОТОГРАФ",
    "Специалист по контекстной рекламе, или контекстолог, –  сотрудник, который занимается ведением и анализом контекстной рекламы. Он настраивает рекламу таким образом, чтобы она показывалась только тем людям, кто искал в интернете похожую информацию.",
    "* Владение графическими программами * Умение вести переговоры * Умение убеждать * Умение выступать на публике * Дизайн-мышление * Креативность * умение слышать и слушать",
  ];

  var san;

  @override
  void initState() {
    // TODO: implement initState
    san = widget.a == 0
        ? kont_rek
        : san = widget.a == 1
            ? smm
            : san = widget.a == 2
                ? kopirayete
                : san = widget.a == 3 ? event : fotograf;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height - 100,
            child: CustomScrollView(slivers: [
              SliverPadding(
                  padding: const EdgeInsets.all(5),
                  sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('${san[0]}',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.teal.shade900,
                                  fontSize: 16)),
                          Container(
                              margin: EdgeInsets.only(top: 40, bottom: 40),
                              width: 350,
                              height: 250,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.teal),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Image.asset(
                                "asset/wybor2.jpg",
                                width: 350,
                                height: 250,
                              )),
                          Text('${san[1]}',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.teal.shade900,
                                  fontSize: 14)),
                          Container(
                              margin: EdgeInsets.only(top: 40, bottom: 40),
                              width: 350,
                              height: 250,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.teal),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Image.asset(
                                "asset/wybor.png",
                                width: 350,
                                height: 250,
                              )),
                          Text('${san[2]}',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.teal.shade900,
                                  fontSize: 14)),
                        ],
                      );
                    },
                    childCount: 1,
                  )))
            ])));
  }
}