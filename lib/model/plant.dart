import 'package:flutter/cupertino.dart';

class Plant with ChangeNotifier {
  late int id;
  late String image;
  late String name;
  late String color;
  late String phylum;
  late String seed;
  late String flower;
  late String fruit;
  late String reproduction;
  late String conductingVessels;

  Plant();
  Plant.attributes({
    required this.id,
    required this.image,
    required this.name,
    required this.color,
    required this.phylum,
    required this.seed,
    required this.flower,
    required this.fruit,
    required this.reproduction,
    required this.conductingVessels,
  });
}
