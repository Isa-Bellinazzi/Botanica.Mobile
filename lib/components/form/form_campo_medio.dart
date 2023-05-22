import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class FormCampoMedio extends StatefulWidget {
  final String legenda;

  const FormCampoMedio({Key? key, required this.legenda}) : super(key: key);

  @override
  _FormCampoMedioState createState() => _FormCampoMedioState();
}

class _FormCampoMedioState extends State<FormCampoMedio> {
  String? opcaoSelecionada;

  final List<String> ambiente = [
    'ÁRIDO',
    'AQUÁTICO',
    'FRIO',
    'TEMPERADO',
    'ÚMIDO'
  ];

  final List<String> reproducao = [
    'ASSEXUADA',
    'BROTAMENTO',
    'POLINIZAÇÃO',
    'SEXUADA',
  ];

  final List<String> filo = [
    'ANGIOSPERMA',
    'BRIOFITA',
    'GIMNOSPERMA',
    'PTERIDOFITA',
  ];

  List<String> getOpcoes() {
    if (widget.legenda == 'Tipo de reprodução:') {
      return reproducao;
    } else if (widget.legenda == 'Tipo de ambiente:') {
      return ambiente;
    } else {
      return filo;
    }
  }

  @override
  Widget build(BuildContext context) {
    final opcoes = getOpcoes();

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
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(7),
                  ),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconEnabledColor: ColorsTheme.contrast,
                      iconSize: 30,
                      value: opcaoSelecionada,
                      isDense: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          opcaoSelecionada = newValue;
                        });
                      },
                      items: opcoes.map((opcao) {
                        return DropdownMenuItem<String>(
                          value: opcao,
                          child: Text(
                            opcao,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
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
