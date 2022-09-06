import 'package:flutter/material.dart';

class Adss extends StatefulWidget {
  const Adss({Key? key}) : super(key: key);

  @override
  State<Adss> createState() => _AdssState();
}

class _AdssState extends State<Adss> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 150,
        floating: false,
        pinned: true,
        snap: false,
        flexibleSpace: FlexibleSpaceBar(
          title: Text("Вакансии и Резюме",
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
                              'asset/nRabota.png',
                            ),
                            fit: BoxFit.fill),
                        border: Border.all(width: 2, color: Colors.teal),
                        borderRadius: BorderRadius.circular(5)),
                    child: Stack(alignment: Alignment.center, children: [
                      Text('Найти работу',
                          style: TextStyle(
                              backgroundColor: Colors.white54,
                              decoration: TextDecoration.none,
                              color: Colors.blueGrey,
                              fontSize: 30,
                              fontWeight: FontWeight.w700)),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Obyawleniye()));
                  },
                );
              },
              childCount: 1,
            ),
          )),
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
                            'asset/nSotrudnik.png',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.center, children: [
                    Text('Найти работникa',
                        style: TextStyle(
                            backgroundColor: Colors.white54,
                            decoration: TextDecoration.none,
                            color: Colors.blueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.w700)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Obyawleniye()));
                },
              );
            },
            childCount: 1,
          ),
        ),
      ),
    ]);
  }
}

class Obyawleniye extends StatefulWidget {
  const Obyawleniye({Key? key}) : super(key: key);

  @override
  State<Obyawleniye> createState() => _ObyawleniyeState();
}

class _ObyawleniyeState extends State<Obyawleniye> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
