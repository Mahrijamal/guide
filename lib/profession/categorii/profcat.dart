import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'categorMedia.dart';
import 'categorFinance.dart';
import 'categorMedical.dart';
import 'categorProgram.dart';
import 'categorTrading.dart';

class Profession extends StatefulWidget {
  const Profession({Key? key}) : super(key: key);

  @override
  State<Profession> createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession> {
  List name = ["MEDIA", "FINANCE", "TRADING", "MEDICAL", "PROGRAMMING"];
  List image = [
    "media.png",
    "finance.png",
    "trading.png",
    "medical.png",
    "programming.png"
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
          title: Text("Изучи проффесию и сделай осознаный выбор",
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
                            'asset/${image[0]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Text('${name[0]}',
                        style: TextStyle(backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategMedia(a:
                      index,
                      )));
                },
              );
            },
            childCount: 1,
          ),
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
                            'asset/${image[1]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Text('${name[1]}',
                        style: TextStyle(backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategFinance(a:
                      index,
                      )));
                },
              );
            },
            childCount: 1,
          ),
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
                            'asset/${image[2]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Text('${name[2]}',
                        style: TextStyle(backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategTrading(a:
                      index,
                      )));
                },
              );
            },
            childCount: 1,
          ),
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
                            'asset/${image[3]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Text('${name[3]}',
                        style: TextStyle(backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategMedical(a:
                      index,
                      )));
                },
              );
            },
            childCount: 1,
          ),
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
                            'asset/${image[4]}',
                          ),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Text('${name[4]}',
                        style: TextStyle(backgroundColor: Colors.teal.shade900,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 40)),
                  ]),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tmt()));

                      //     CategProgram(a:
                      // index,
                      // )));
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

class tmt extends StatefulWidget {
  const tmt({Key? key}) : super(key: key);

  @override
  State<tmt> createState() => _tmtState();
}

class _tmtState extends State<tmt> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}






