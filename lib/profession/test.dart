import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'registrasiya.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(
                title: Container(
                    width: 350,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Опросник Йовайши",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Инструкция:",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    )),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "Вам будет предложен перечень положений, или "
                          "вопросов, имеющих два варианта ответа. "
                          "Определите, какому из вариантов вы отдаете "
                          "предпочтение, и зафиксируйте это в бланке "
                          "ответов.Если вы полностью согласны с вариантом"
                          " «а» и не согласны с вариантом «б», то в "
                          "клетку с цифрой, соответствующей номеру "
                          "вопроса или утверждения, и буквой «а» "
                          "поставьте цифру 3, а в клетку «б» 0. В случае "
                          "вашего полного согласия с вариантом «б» и "
                          "несогласия с вариантом «а» в клетку «б» "
                          "вносится цифра 3, а в клетку «а» 0.Если вы "
                          "согласны как с вариантом «а», так и с "
                          "вариантом «б», то выберите из них наиболее "
                          "предпочтительный для Вас и оцените его в 2 "
                          "балла, менее предпочтительный вариант оцените "
                          "в 1 балл. Отвечайте на вопросы, не пропуская "
                          "ни одного из них.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                    ),
                    GestureDetector(
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.yellowAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Начать",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.teal.shade900),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyStatefulWidget()));
                        }),
                  ],
                )),
          );
        }),
        itemCount: 1,
      ),
    ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List sorag = [
    "1. Представьте, что Вы на выставке. Что Вас больше "
        "привлекает в экспонатах:",
    "2. Какие черты характера в человеке Вам "
        "больше нравятся:",
    "3. Служба быта оказывает людям разные услуги. Считаете ли Вы необходимым:",
    "4. Какое вознаграждение Вас больше бы обрадовало:",
    "5. Вы смотрите "
        "военный или спортивный парад. Что больше привлекает Ваше внимание:",
    "6. Представьте, что у Вас много свободного времени. Чем бы Вы охотнее "
        "занялись:",
    "7. Какую выставку Вы бы с большим удовольствием "
        "посмотрели:",
    "8. Если бы в школе было два кружка, какой бы Вы "
        "выбрали:",
    "9. Если бы Вам предоставили пост директора школы, на что"
        " бы Вы обратили большеевнимание:",
    "10. Какие журналы Вы бы с большим удовольствием читали:"
  ];
  List jogapA = [
    "а – цвет, совершенство формы;",
    "а – дружелюбие, чуткость, отсутствие корысти",
    "а – и впредь развивать "
        "эту отрасль, чтобы всесторонне обслуживать людей;",
    "а – за "
        "общественную деятельность; ",
    "а – слаженность ходьбы, грациозность "
        "участников парада; ",
    "а – чем-либо практическим (ручным трудом);",
    "а – новинок научной аппаратуры (в области физики, химии, биологии);",
    "а"
        " – музыкальный; ",
    "а – на сплоченность коллектива;",
    "а – "
        "литературно-художественные; "
  ];
  List jogapB = [
    "б – их внутреннее устройство (как и из чего они сделаны).",
    "б – мужество, смелость, выносливость.",
    "б – создавать такую технику, "
        "которой можно было бы самим пользоваться в быту.",
    "б – за научное "
        "изобретение.",
    "б – внешнее оформление колонн (знамена, одежда и др"
        ".).",
    "б – общественной работой (на добровольных началах).",
    "б – "
        "новых продовольственных товаров.",
    "б – технический.",
    "б – на "
        "создание необходимых удобств.",
    "б – научно-популярные."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 50.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('ПРОЙДИ ТЕСТ'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(3, 0), // changes position of shadow
                    ),
                  ],
                ),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '${sorag[index]}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          '${jogapA[index]}',
                        ),
                      ),
                      Text('${jogapB[index]}'),
                    ],
                  ),
                ),
              );
            },
            childCount: 10,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return
                GestureDetector(
              child:
                Container(
                alignment: Alignment.center,
                color: Colors.teal,
                child: Text('Зарегистрируйся и получи результат', style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),),
                ),
                  onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Regist()));
              }
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
