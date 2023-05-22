import 'package:botanica_mobile/model/plant.dart';
import 'package:flutter/cupertino.dart';

class PlantProvider extends ChangeNotifier {
  late Plant _plant;

  Plant get plant => _plant;

  void setCidadao(Plant plant) {
    _plant = plant;
    notifyListeners();
  }
}
