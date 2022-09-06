// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.media,
    required this.finance,
    required this.medical,
    required this.tride,
    required this.programming,
  });

  Media media;
  Finance finance;
  Medical medical;
  Tride tride;
  Programming programming;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    media: Media.fromJson(json["Media"]),
    finance: Finance.fromJson(json["Finance"]),
    medical: Medical.fromJson(json["Medical"]),
    tride: Tride.fromJson(json["Tride"]),
    programming: Programming.fromJson(json["Programming"]),
  );

  Map<String, dynamic> toJson() => {
    "Media": media.toJson(),
    "Finance": finance.toJson(),
    "Medical": medical.toJson(),
    "Tride": tride.toJson(),
    "Programming": programming.toJson(),
  };
}

class Finance {
  Finance({
    required this.analitic,
    required this.kredit,
    required this.borker,
    required this.buhgalter,
  });

  Analitic analitic;
  Analitic kredit;
  Analitic borker;
  Analitic buhgalter;

  factory Finance.fromJson(Map<String, dynamic> json) => Finance(
    analitic: Analitic.fromJson(json["analitic"]),
    kredit: Analitic.fromJson(json["kredit"]),
    borker: Analitic.fromJson(json["borker"]),
    buhgalter: Analitic.fromJson(json["buhgalter"]),
  );

  Map<String, dynamic> toJson() => {
    "analitic": analitic.toJson(),
    "kredit": kredit.toJson(),
    "borker": borker.toJson(),
    "buhgalter": buhgalter.toJson(),
  };
}

class Analitic {
  Analitic({
    required this.profName,
    required this.description,
    required this.fullDescription,
    required this.requiredSkills,
    required this.highQualification,
  });

  String profName;
  String description;
  String fullDescription;
  String requiredSkills;
  String highQualification;

  factory Analitic.fromJson(Map<String, dynamic> json) => Analitic(
    profName: json["Prof_name"],
    description: json["Description"],
    fullDescription: json["Full_description"],
    requiredSkills: json["Required_skills"],
    highQualification: json["High_qualification"],
  );

  Map<String, dynamic> toJson() => {
    "Prof_name": profName,
    "Description": description,
    "Full_description": fullDescription,
    "Required_skills": requiredSkills,
    "High_qualification": highQualification,
  };
}

class Media {
  Media({
    required this.kontRek,
    required this.smm,
    required this.kopirayeter,
    required this.event,
    required this.fotograf,
  });

  Analitic kontRek;
  Analitic smm;
  Analitic kopirayeter;
  Analitic event;
  Analitic fotograf;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    kontRek: Analitic.fromJson(json["kont_rek"]),
    smm: Analitic.fromJson(json["smm"]),
    kopirayeter: Analitic.fromJson(json["kopirayeter"]),
    event: Analitic.fromJson(json["event"]),
    fotograf: Analitic.fromJson(json["fotograf"]),
  );

  Map<String, dynamic> toJson() => {
    "kont_rek": kontRek.toJson(),
    "smm": smm.toJson(),
    "kopirayeter": kopirayeter.toJson(),
    "event": event.toJson(),
    "fotograf": fotograf.toJson(),
  };
}

class Medical {
  Medical({
    required this.bioteh,
    required this.stomatolog,
    required this.endokrin,
    required this.hirurg,
  });

  Analitic bioteh;
  List<Analitic> stomatolog;
  Analitic endokrin;
  Analitic hirurg;

  factory Medical.fromJson(Map<String, dynamic> json) => Medical(
    bioteh: Analitic.fromJson(json["bioteh"]),
    stomatolog: List<Analitic>.from(json["stomatolog"].map((x) => Analitic.fromJson(x))),
    endokrin: Analitic.fromJson(json["endokrin"]),
    hirurg: Analitic.fromJson(json["hirurg"]),
  );

  Map<String, dynamic> toJson() => {
    "bioteh": bioteh.toJson(),
    "stomatolog": List<dynamic>.from(stomatolog.map((x) => x.toJson())),
    "endokrin": endokrin.toJson(),
    "hirurg": hirurg.toJson(),
  };
}

class Programming {
  Programming({
    required this.project,
    required this.geymDesign,
    required this.werstal,
    required this.admin,
  });

  Analitic project;
  Analitic geymDesign;
  Analitic werstal;
  Analitic admin;

  factory Programming.fromJson(Map<String, dynamic> json) => Programming(
    project: Analitic.fromJson(json["project"]),
    geymDesign: Analitic.fromJson(json["geym-design"]),
    werstal: Analitic.fromJson(json["werstal"]),
    admin: Analitic.fromJson(json["admin"]),
  );

  Map<String, dynamic> toJson() => {
    "project": project.toJson(),
    "geym-design": geymDesign.toJson(),
    "werstal": werstal.toJson(),
    "admin": admin.toJson(),
  };
}

class Tride {
  Tride({
    required this.merch,
    required this.promoutor,
    required this.expeditor,
    required this.productAnalitic,
  });

  Analitic merch;
  Analitic promoutor;
  Analitic expeditor;
  Analitic productAnalitic;

  factory Tride.fromJson(Map<String, dynamic> json) => Tride(
    merch: Analitic.fromJson(json["merch"]),
    promoutor: Analitic.fromJson(json["promoutor"]),
    expeditor: Analitic.fromJson(json["expeditor"]),
    productAnalitic: Analitic.fromJson(json["product-analitic"]),
  );

  Map<String, dynamic> toJson() => {
    "merch": merch.toJson(),
    "promoutor": promoutor.toJson(),
    "expeditor": expeditor.toJson(),
    "product-analitic": productAnalitic.toJson(),
  };
}
