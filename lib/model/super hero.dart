// To parse this JSON data, do
//
//     final superhero = superheroFromJson(jsonString);

import 'dart:convert';

Superhero superheroFromJson(String str) => Superhero.fromJson(json.decode(str));

String superheroToJson(Superhero data) => json.encode(data.toJson());

class Superhero {
  List<SuperheroElement> superheros;

  Superhero({
    required this.superheros,
  });

  factory Superhero.fromJson(Map<String, dynamic> json) => Superhero(
    superheros: List<SuperheroElement>.from(json["superheros"].map((x) => SuperheroElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "superheros": List<dynamic>.from(superheros.map((x) => x.toJson())),
  };
}

class SuperheroElement {
  String name;
  String power;
  String url;

  SuperheroElement({
    required this.name,
    required this.power,
    required this.url,
  });

  factory SuperheroElement.fromJson(Map<String, dynamic> json) => SuperheroElement(
    name: json["name"],
    power: json["power"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "power": power,
    "url": url,
  };
}
