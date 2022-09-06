import 'package:flutter/material.dart';
import 'dart:core';
import 'package:http/http.dart' as http;


class Cardt extends StatefulWidget {
  int a;
  Cardt({required this.a});

  @override
  State<Cardt> createState() => _CardtState();
}

class _CardtState extends State<Cardt> {

  List merch = ["МЕРЧЕНДАЙЗЕР", "Мерчендайзер – специалист, в основные "
      "обязанности которого входит расстановка товаров на полках розничных магазинов согласно продуманной системе.",  "*Комуникабельность\n*Терпение и выносливость\n*Вежливость",
  ];

  List promoutor= [
    "ПРОМОУТЕР",
    "Промоутер – это профессия для активного коммуникабельного человека. Промоутер раздает листовки в общественных местах: возле станций метро, на улицах, на выставках, в фойе торговых центров. Специалист занимается привлечением новых клиентов в офис заказчика, помогает отделу продаж генерировать заказы. Услугами промоутеров активно пользуются не только рекламные и BTL-агентства, но и производственные компании, кафе, пиццерии, магазины.\n\nВ обязанности промоутера, помимо раздачи материалов, входит первичное консультирование клиентов, участие в промоакциях. Промоутеру важно быть не только коммуникабельным, стрессоустойчивым, но и физически выносливым, потому что по роду занятий ему приходится много времени проводить на ногах в местах большого скопления людей.",
    "*Комуникабельность\n*Терпение и выносливость\n*Вежливость",
  ];

  List expeditor = [
    "ЭКСПЕДИТОР",
    "Экспедиторы занимаются сопровождением грузов. Чаще всего водители-экспедиторы требуются по доставке и экспедированию продуктов питания в сетевые и розничные магазины на автомобилях компании. Экспедитор не только отвечает за доставку грузов, но и оформляет товарно-сопроводительные документы.\n\nОсновная задача экспедитора – обеспечить сохранность доставляемой продукции, защитить груз от риска кражи или механического повреждения.  \n\nТовар, который сопровождают экспедиторы, может быть из любой категории: начиная с предметов мебели и заканчивая парфюмерно-косметической продукцией и бытовой химией. Помимо сопровождения груза сотрудники занимаются сдачей и получением товара, разгрузкой и погрузкой автомобиля. За все услуги работникам полагается дополнительная плата.",
    "* Пунктуальность * Ответственность  * Физическая выносливость",
  ];

  List product_analitic = [
    "ПРОДУКТОВЫЙ АНАЛИТИК",
   "Продуктовый аналитик – специалист, который отвечает за работу со всей воронкой продукта, занимается сбором данных по поведению пользователей и их взаимодействию с продуктом.",
  " * Ответственность  *Целеустремленность   * Умение слышать и слушать  *Аналитическое мышление",
  ];


  var san;

  @override
  void initState() {
    // TODO: implement initState
    san = widget.a == 0
        ? merch
        : san = widget.a == 1
        ? promoutor
        : san = widget.a == 2
        ? expeditor : product_analitic;

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
                                    "asset/trading2.png",
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
                                    "asset/trading.png",
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

