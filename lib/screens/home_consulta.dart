import 'package:botanica_mobile/components/box_card_consulta.dart';
import 'package:botanica_mobile/components/buttons/button_return.dart';
import 'package:flutter/material.dart';
import '../themes/colors_theme.dart';

class HomeConsulta extends StatelessWidget {
  const HomeConsulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas'),
        foregroundColor: Colors.black,
        backgroundColor: ColorsTheme.backgroundAppbar,
        centerTitle: true,
      ),
      backgroundColor: ColorsTheme.background,
      body: ListView(
        children: const <Widget>[
          BoxCardConsulta(
            endpoint: 'Detalhada por ID',
            functionBottom: 'Consultar por ID',
            legenda:
                '\n • Consulta um registro específico por ID,\n trazendo todos os detalhes: \n - Data e Hora que o registro foi feito \n - O usuário que cadastrou \n - Nome,cor,filo, e os demais \n aspectos da Planta ',
          ),
          BoxCardConsulta(
            endpoint: 'Nome dos Filos',
            functionBottom: 'Consultar Filos',
            legenda: '\n • Consulta o nome dos Filos existentes',
          ),
          BoxCardConsulta(
            endpoint: 'Características dos Filos ',
            functionBottom: 'Consultar Características',
            legenda:
                '\n • Consulta as características específicas, \n dos Filos: \n - Angiosperma \n - Briofita \n - Gimnosperma  \n - Pteridofita ',
          ),
          BoxCardConsulta(
            endpoint: 'Registros De Plantas',
            functionBottom: 'Consultar Registros',
            legenda:
                '\n • Consulta todos os registro de plantas cadastradass, \n trazendo os seguintes dados: \n - Data e Hora que o registro foi feito \n - O usuário que cadastrou \n - Nome,cor,filo, e os demais \n aspectos da Planta ',
          ),
          ButtonReturn(),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
