import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test.dart';
import 'categorii/profcat.dart';

class Chouse extends StatefulWidget {
  const Chouse({Key? key}) : super(key: key);

  @override
  State<Chouse> createState() => _ChouseState();
}

class _ChouseState extends State<Chouse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white30,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Наше приложение поможе Вам выбрать профессию и построить "
                "roadmap.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none)),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                            width: 150,
                            height: 50,
                            child: Text(
                              "Выбрать профессию", style: TextStyle(
                                fontSize: 14,
                                color: Colors.teal.shade900,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none)
                            )),
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width:12, color: Colors
                                  .grey),
                              gradient: LinearGradient(
                                  begin: Alignment(-0.5, 0.5),
                                  end: Alignment(0.6, 0.0),
                                  colors: <Color>[
                                    Color(0xff03585c),
                                    Color(0x00ef5350),
                                  ]),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profession()));
                    },
                  ),
                  Column(children: [
                    Container(
                        width: 150,
                        height: 50,
                        child: Text(
                          "Узнай больше о работе своей мечты", style: TextStyle(
                            fontSize: 14,
                            color: Colors.teal.shade900,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none)
                        )),
                    Image.asset(
                      "asset/right.png",
                      width: 150,
                    )
                  ]),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    Container(
                        width: 150,
                        height: 50,
                        child: Text(
                          "Узнай, что подходит тебе",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.teal.shade900,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none)
                        )),
                    Image.asset(
                      "asset/left.png",
                      width: 150,
                    )
                  ]),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                            width: 150,
                            height: 50,
                            child: Text(
                              "Пройди тест", textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.teal.shade900,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none)
                            )),
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 12, color: Colors
                                  .grey),
                              gradient: LinearGradient(
                                  begin: Alignment(-0.5, 0.5),
                                  end: Alignment(0.6, 0.0),
                                  colors: <Color>[
                                    Color(0xff03585c),
                                    Color(0x00ef5350),
                                  ]),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Testing()));
                    },
                  ),
                ]),
          ]),
    );
  }
}
