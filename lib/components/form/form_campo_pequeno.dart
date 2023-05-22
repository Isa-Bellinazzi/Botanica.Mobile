import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class FormCampoPequeno extends StatefulWidget {
  final String legenda;

  const FormCampoPequeno({Key? key, required this.legenda}) : super(key: key);

  @override
  _FormCampoPequenoState createState() => _FormCampoPequenoState();
}

class _FormCampoPequenoState extends State<FormCampoPequeno> {
  String? opcaoSelecionada;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.legenda,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                ' *',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(7),
                  ),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      iconEnabledColor: ColorsTheme.contrast,
                      iconSize: 25,
                      value: opcaoSelecionada,
                      isDense: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          opcaoSelecionada = newValue;
                        });
                      },
                      items: <String>['SIM', 'NÃO'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
