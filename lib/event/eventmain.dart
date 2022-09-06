import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List name = ["Тренинги", "Семинары", "Выставки", "Мастер-классы", "Вебинары"];
  List image = [
    "trening.jpg",
    "seminar.png",
    "wystawka.jpg",
    "master2.png",
    "webinar.png"
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 150,
        floating: false,
        pinned: true,
        snap: false,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("Мероприятия",
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
        padding: const EdgeInsets.all(5),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return GestureDetector(
                child: Container(
                  width: 350,
                  height: 250,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'asset/${image[index]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Text('${name[index]}',
                        style: TextStyle(
                            backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sob(
                                a: index,
                            b: index == 2 ? Wystowka() :Wystowka(),
                              )));
                },
              );
            },
            childCount: name.length,
          ),
        ),
      ),
    ]);
  }
}

class Sob extends StatefulWidget {
  int a;
  var b;
  Sob({required this.a,required this.b});


  @override
  State<Sob> createState() => _SobState();
}

class _SobState extends State<Sob> {
  List trening = ["Арбитражная практика по НДС и налогу на прибыль", "Арбитра"
      "жная практика по НДС и налогу на прибыль", "Арбитражная практика по "
      "НДС и налогу на прибыль", "Арбитражная практика по НДС и налогу на "
      "прибыль", "Арбитражная практика по НДС и налогу на прибыль",] ;
  List seminar = [
    "Арбитражная практика по НДС и налогу на прибыль",
    "14 сентября Среда, 15:00",
    "4 часа",
    "Александр 	Александрович",
    "Aшхабадская школа бизнеса и права 'Hukuk'"
  ];
  Wystowka s =  Wystowka();
  void man() {Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>  Wystowka()));
  }

  List master = ["Арбитражная практика по НДС и налогу на прибыль",];
  List webinar = ["Арбитражная практика по НДС и налогу на прибыль",];

  var san;

  @override
  void initState() {
    // TODO: implement initState
    san = widget.a == 0
        ? trening
        : san = widget.a == 1
            ? seminar
                : san = widget.a == 3 ? master : webinar;

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
          title: Text("Мероприятие",
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
              return Container(
                width: 300,
                height: 150,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.teal),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Тема: ${san[0]}',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.teal.shade900,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Время: ${san[1]}',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.teal.shade900,
                          fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
                    Text('Длительность: ${san[2]}',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.teal.shade900,
                            fontSize: 14)),
                    // Image.asset("asset/dart.png"),
                    Text('Ментор: ${san[3]}',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.teal.shade900,
                            fontSize: 14)),
                    Text('Место: ${san[4]}',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.teal.shade900,
                            fontSize: 14)),
                  ],
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ),
    ]);
  }
}

class Wystowka extends StatefulWidget {
  const Wystowka({Key? key}) : super(key: key);

  @override
  State<Wystowka> createState() => _WystowkaState();
}

class _WystowkaState extends State<Wystowka> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(carousel()),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 500.0,
          delegate: SliverChildListDelegate(textWystowky()),
        ),
      ],
    );
  }
}

List<Widget> carousel() {

  return [
    CarouselSlider.builder(
      options: CarouselOptions(
          height: 200,
          aspectRatio: 4 / 2,
          autoPlay: true,
          reverse: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,
          viewportFraction: 1,
          initialPage: 2,
          autoPlayAnimationDuration: Duration(seconds: 1)),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Image.asset("asset/wystawka2.png", );
      },
      itemCount: 5,
    ),
  ];
}

List<Widget> textWystowky() {
  return [Text("Hello world!")];
}
