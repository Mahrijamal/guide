import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Scholls extends StatefulWidget {
  const Scholls({Key? key}) : super(key: key);

  @override
  State<Scholls> createState() => _SchollsState();
}

class _SchollsState extends State<Scholls> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Учебные центры Туркменистана",
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
          padding: const EdgeInsets.all(15),
          sliver: SliverFixedExtentList(
            itemExtent: 300.0,
            delegate: SliverChildListDelegate(textWystowky()),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(15),
          sliver: SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildListDelegate(kurs()),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(carousel()),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildListDelegate(wuz()),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(carousel2()),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildListDelegate(uchil()),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(carousel3()),
          ),
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
        List wystawka = [
          "asset/reklama.png",
          "asset/media.png",
          "asset/master.png",
          "asset/wystawka2.png"
        ];
        return Image.asset("${wystawka[index]}");
      },
      itemCount: 4,
    ),
  ];
}

List<Widget> carousel2() {
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
          autoPlayAnimationDuration: Duration(seconds: 2)),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        List wystawka = [
          "asset/webinar.png", "asset/Без названия.png", "asset/uc1.png"
        ];
        return Image.asset("${wystawka[index]}");
      },
      itemCount: 3,
    ),
  ];
}

List<Widget> carousel3() {
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
        List wystawka = [
              "asset/medun.png", "asset/himitog.png"
        ];
        return Image.asset("${wystawka[index]}");
      },
      itemCount: 2,
    ),
  ];
}

List<Widget> textWystowky() {
  return [
    Column(
      children: [
        Text(
          "Путь 'школа -> вуз -> работа' уже не актуален",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        Container(
          width: 350,
          height: 20,
        ),
        Text(
          "Школа — вуз — работа. Так на первый взгляд выглядит типичная "
          "образовательно-профессиональная траектория. Однако траектории "
          "молодежи во многих развитых странах становятся все менее "
          "последовательными и линейными. Студенты начинают работать задолго "
          "до окончания вуза. Само обучение часто растягивается во времени: "
          "выпускники могут проработать какое-то время, а затем продолжить "
          "учебу. Путь в постоянную занятость может лежать через длительную "
          "смену временных работ. Становится ясно: образовательно-карьерная "
          "траектория — это извилистый путь со множеством остановок.",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    )
  ];
}

List<Widget> wuz() {
  return [
    Text(
      "Высшие учебные заведения Туркменистана",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
      textAlign: TextAlign.center,
    ),
  ];
}

List<Widget> uchil() {
  return [
    Text(
      "Средние специализированные учебные заведения Туркменистана",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
      textAlign: TextAlign.center,
    ),
  ];
}

List<Widget> kurs() {
  return [
    Text(
      "Частные учебные заведения",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
      textAlign: TextAlign.center,
    ),
  ];
}
