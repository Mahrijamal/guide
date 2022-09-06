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
  List analitic = [
    "БИЗНЕС-АНАЛИТИК",
    "Бизнес-аналитик – это специалист-эксперт, который занимается анализом различных сфер деятельности компании, например: эффективности ассортимента, финансовых показателей, факторным анализом категорий. Его главная задача – найти проблему и подобрать конкретный способ ее решения.",
    "* Ответсвенность\n* Аналитическое мышление\n*Внимательность\n*Системное мышление, спососбность к анализу",
  ];

  List kredit = ["КРЕДИТНЫЙ МЕНЕДЖЕР", "Кредитный менеджер – специалист, который занят активным привлечением потенциальных клиентов для оформления кредитных продуктов банка.\n\nКредитный менеджер помогает клиентам в оформлении документов, занимается выдачей кредитов клиентам по заявкам или помогает им получить заём на продукцию. Специалисты работают не только в банках, но и в компаниях, реализующих дорогостоящие товары: квартиры, автомобили, антиквариат и многое другое. Профессия подойдет людям педантичным, ответственным, готовым к рутинной и однообразной работе.\n\nКредитные менеджеры, занятые в банках, помогают реализовывать кредитные продукты. К кандидатам на должность работодатели стандартно предъявляют довольно высокие требования: от специалистов требуют не только профильное образование, но и знания в вопросах кредитования и выдачи займов, прокачанные навыки ведения переговоров. Кандидаты должны владеть навыками финансового и экономического анализа.",
    "*Вежливость\n*Внимательность\n*Умение работать с документацией\n*Способность систематизации и Анализу",];

  List borker = [
    "БРОКЕР",
    "БРОКЕР – специалист, который занимается подготовкой рекламно-информационных материалов для сайтов,  посадочных страниц, печатной продукции. Специалист работает по контент-плану и создает информационные, рекламные статьи, посты для социальных сетей, занимается созданием текстов рекламных баннеров, e-mail-рассылок, текстов для мессенджеров, презентаций и так далее.",
    "* Умение правильно излагать мысли* Креативность *Внимательность *Знание грамматики",
  ];

  List buhgalter = ["БУХГАЛТЕР", "Бухгалтер — это специалист, который обеспечивает документальное ведение финансово-хозяйственного учета компании. Профиль деятельности бухгалтера достаточно широк: от начисления  заработной платы до расчета пособий и различных налогов.", "* Ответсвенность* "
      "* Высокий уровень ответсвенности, * Вовлеченность, * Стрессоустойчивость "];


  var san;

  @override
  void initState() {
    // TODO: implement initState
    san = widget.a == 0
        ? analitic
        : san = widget.a == 1
        ? kredit
        : san = widget.a == 2
        ? borker : buhgalter;

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
                                    "asset/finance.png",
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
                                    "asset/finance2.png",
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

